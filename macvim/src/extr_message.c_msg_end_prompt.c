
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* FALSE ;
 int cmdline_row ;
 void* emsg_on_display ;
 int lines_left ;
 int msg_clr_eos () ;
 scalar_t__ msg_col ;
 int msg_row ;
 void* need_wait_return ;

void
msg_end_prompt()
{
    need_wait_return = FALSE;
    emsg_on_display = FALSE;
    cmdline_row = msg_row;
    msg_col = 0;
    msg_clr_eos();
    lines_left = -1;
}
