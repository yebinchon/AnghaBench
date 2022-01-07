
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Rows ;
 void* TRUE ;
 scalar_t__ msg_col ;
 int msg_row ;
 void* need_wait_return ;
 void* redraw_cmdline ;
 scalar_t__ sc_col ;

void
msg_check()
{
    if (msg_row == Rows - 1 && msg_col >= sc_col)
    {
 need_wait_return = TRUE;
 redraw_cmdline = TRUE;
    }
}
