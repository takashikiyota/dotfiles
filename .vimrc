" .vimrc

"*****************************
" 基本設定 Basics
"*****************************

" 文字エンコーディングの設定
set encoding=utf-8

"フルスクリーン切り替え
set fu / set nofu

" スワップファイルを作成しない
:set noswapfile

" バックアップファイルを作成しない
:set nobackup

" quickfixを自動で開く
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

"*****************************
" Display (表示)
"*****************************

" 行番号を記述
set number

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

"*****************************
" Indent (インデント)
"*****************************

" インデントやタブの設定
set expandtab
set shiftwidth=8
set softtabstop=8
set tabstop=8


"*****************************
" keymap
"*****************************

"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Right> <Nop>

"Quick-run画面表示
nmap <F1> :'<,>:Align:
"nmap <F2> 
"nmap <F3> 
"nmap <F4> 
"nmap <F5> 
"nmap <F6> 
"nmap <F7> 

"Quick-run画面表示
nmap <F8> :QuickRun

"NERDTreeエクスプローラ表示
nmap <F9> :NERDTreeToggle


"*****************************
" vimプラグイン設定リスト
" * vundle
" * zencoding.vim
" * neocomplcache
" * VimShell
" * surround.vim
"*****************************

"*****************************
" * vundle 設定
"*****************************

set nocompatible
filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" vim-scripts
" Bundle 'pulgin_name'

" github
" Bundle 'user_name/pulgin_name'
Bundle 'h1mesuke/vim-alignta'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'
Bundle 'othree/html5.vim'
Bundle 'hallettj/jslint.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'thinca/vim-quickrun'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/Sass'

" git-plugin
" Bundle 'git://repository_url'
" nothing

" Vundleの処理後、ftpluginとindentを読み込む
filetype plugin indent on


"*****************************
" * zencoding.vim 設定
"*****************************

"Zen Coadingキーを<ctrl-e>で展開
let g:user_zen_expandabbr_key = '<c-e>'

"Zen Coading基本設定
let g:user_zen_settings = {
\  'lang' : 'ja',
\  'indentation' : '        ',
\  'html' : {
\    'indentation' : '        ',
\  },
\  'css' : {
\    'filters' : 'fc',
\  },
\}


"*****************************
" * neocomplcache 設定
"*****************************

"neocomplcacheを起動時に有効
let g:neocomplcache_enable_at_startup=1


"*****************************
" * VimShell 設定
"*****************************
let g:vimproc_dll_path = $VIMRUNTIME . '/autoload/proc.so'


"*****************************
" * for surround.vim
"*****************************

" [key map]
" 1 : <h1>|</h1>
" 2 : <h2>|</h2>
" 3 : <h3>|</h3>
" 4 : <h4>|</h4>
" 5 : <h5>|</h5>
" 6 : <h6>|</h6>
"
" p : <p>|</p>
" u : <ul>|</ul>
" o : <ol>|</ol>
" l : <li>|</li>
" a : <a href="">|</a>
" A : <a href="|"></a>
" i : <img src="|" alt="" />
" I : <img src="" alt"|" />
" d : <div>|</div>
" D : <div class="section">|</div>

autocmd FileType html let b:surround_49  = "<h1>\r</h1>"
autocmd FileType html let b:surround_50  = "<h2>\r</h2>"
autocmd FileType html let b:surround_51  = "<h3>\r</h3>"
autocmd FileType html let b:surround_52  = "<h4>\r</h4>"
autocmd FileType html let b:surround_53  = "<h5>\r</h5>"
autocmd FileType html let b:surround_54  = "<h6>\r</h6>"

autocmd FileType html let b:surround_112 = "<p>\r</p>"
autocmd FileType html let b:surround_117 = "<ul>\r</ul>"
autocmd FileType html let b:surround_111 = "<ol>\r</ol>"
autocmd FileType html let b:surround_108 = "<li>\r</li>"
autocmd FileType html let b:surround_97  = "<a href=\"\">\r</a>"
autocmd FileType html let b:surround_65  = "<a href=\"\r\"></a>"
autocmd FileType html let b:surround_105 = "<img src=\"\r\" alt=\"\" />"
autocmd FileType html let b:surround_73  = "<img src=\"\" alt=\"\r\" />"
autocmd FileType html let b:surround_100 = "<div>\r</div>"
autocmd FileType html let b:surround_68  = "<div class=\"section\">\r</div>"


