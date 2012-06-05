function! Refactor()
    call inputsave()
    let @z=input("What do you want to rename '" . @z . "' to? ")
    call inputrestore()
endfunction

" Locally (local to block) rename a variable
autocmd FileType coffee nmap <buffer> <Leader>rr "zyiw:call Refactor()<cr>mx:silent! norm gd<cr>Vii%:s/<C-R>//<c-r>z/g<cr>`x
autocmd FileType javascript nmap <buffer> <Leader>rr "zyiw:call Refactor()<cr>mx:silent! norm gd<cr>[{V%:s/<C-R>//<c-r>z/g<cr>`x