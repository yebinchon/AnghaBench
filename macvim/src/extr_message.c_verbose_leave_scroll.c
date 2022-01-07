
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NUL ;
 int cmdline_row ;
 int msg_row ;
 scalar_t__ msg_silent ;
 scalar_t__* p_vfile ;

void
verbose_leave_scroll()
{
    if (*p_vfile != NUL)
    {
 if (--msg_silent < 0)
     msg_silent = 0;
    }
    else
 cmdline_row = msg_row;
}
