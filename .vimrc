call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

let mapleader = ","

let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<c-b>'
noremap <c-n> :LeaderfMru<cr>
noremap <c-f> :LeaderfFunction!<cr>
noremap <c-b> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

set tags=./.tags;,.tags

let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

let g:gutentags_ctags_tagfile = '.tags'

let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" Tag list
map <silent> <leader>tl :TlistToggle<cr>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40


" C++ Highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1


" YCM
let g:ycm_confirm_extra_conf = 0

set nocompatible
set backspace=indent,eol,start


set number
set ruler

set incsearch
set hlsearch
set ignorecase smartcase

set showcmd
set history=10000
set nobackup
set noswapfile

set cursorline
set showmatch

syntax enable
syntax on

set t_Co=256

set mouse=a

set tabstop=4
set shiftwidth=4

set softtabstop=4
set smarttab

set expandtab

set encoding=utf-8

set ff=unix

filetype on

filetype indent on

filetype plugin on

filetype plugin indent on

set background=dark
colorscheme molokai

















