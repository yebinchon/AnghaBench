
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VV_TERMRESPONSE ;
 scalar_t__ autocmd_blocked ;
 int get_vim_var_str (int ) ;
 int old_termresponse ;

void
block_autocmds()
{





    ++autocmd_blocked;
}
