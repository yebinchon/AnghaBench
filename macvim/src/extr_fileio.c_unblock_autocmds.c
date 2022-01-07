
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENT_TERMRESPONSE ;
 int FALSE ;
 int VV_TERMRESPONSE ;
 int apply_autocmds (int ,int *,int *,int ,int ) ;
 scalar_t__ autocmd_blocked ;
 int curbuf ;
 scalar_t__ get_vim_var_str (int ) ;
 scalar_t__ old_termresponse ;

void
unblock_autocmds()
{
    --autocmd_blocked;
}
