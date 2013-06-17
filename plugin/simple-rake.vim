if exists("loaded_simple_rake_vim")
  finish
endif

let g:loaded_simple_rake_vim = 1
let g:simple_rake_vim_command = "rake"

function! s:VimRake(...)
  :exe ":!clear && ".g:simple_rake_vim_command." ".join(a:000, " ")
endfunction

command! -nargs=? R :call <SID>VimRake(<f-args>)

finish

