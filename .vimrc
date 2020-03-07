set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
"================================================================================ 
" Python Stuff 
" Bundle 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF
" Simple Python Fold
" Plugin 'tmherdberg/SimpylFold'
" Indent Python
Plugin 'vim-scripts/indentpython.vim'
" Check Python Syntax on save
Plugin 'vim-syntastic/syntastic'
" CHeck PEP 8
Plugin 'nvie/vim-flake8'
" nerd tree
Plugin 'preservim/nerdtree'
" Auto tags
Bundle 'craigemery/vim-autotag'
" Python syntax
Plugin 'vim-python/python-syntax'
" Python Context based highlighting
Plugin 'numirias/semshi'

"================================================================================ 
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" More Configs
"================================================================================ 
" Generic
"================================================================================ 
set encoding=utf-8
set number
set relativenumber
set nohls
" Split screen in a more natural way
set splitbelow
set splitright
" Set style in dir mode
let g:netrw_liststyle = 3

" Need nerd tree. 
" Auto start if no files is specify
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Auto close if nerd tree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Map Ctrl + 1 to toggle NerdTree
map <C-n> :NERDTreeToggle<CR>

" Need Python Syntax
let g:python_highlight_all = 1

"================================================================================ 
" Python 
"================================================================================ 
" Enable Folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
" Use SmpylFold plugin
let g:SimpylFold_docstring_preview=1

" Makes Python Code look pretty
let python_highlight_all=1
syntax on

" Semshi mapping
nmap <silent> <leader>rr :Semshi rename<CR>

"================================================================================ 
