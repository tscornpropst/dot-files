syntax on
filetype on
filetype plugin on

set background=dark
let g:solarized_termtrans=1
colorscheme solarized

set backspace=indent,eol,start
set showmode
set ruler
set autoindent
set showcmd
set shiftwidth=2
autocmd FileType perl set shiftwidth=4
set softtabstop=2
autocmd FileType perl set softtabstop=4
set expandtab
set nomodeline
set incsearch
set autoread  " read open files again when changed outside Vim
set autowrite " write a modified buffer on each :next, ...
set nohlsearch
set viminfo='0
let loaded_matchparen = 1

"javascript config
let javascript_enable_domhtmlcss = 1

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*

" Set term title with the filename
set title
auto BufEnter * let &titleold = hostname()

" Change the color of comments for dark backgrounds
"hi comment ctermfg=darkgreen

" Key mappings
map # 0i#<esc>j
map - 0xj		" remove 1 of whatever is at the beginning of the line
map t 0i<tab><esc>j

"autocmd FileType perl map <F1> :!perlcritic -top 10 -verbose 2 %<CR>
