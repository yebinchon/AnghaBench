
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NUL ;
 int TRUE ;
 int msg_scroll ;
 int msg_silent ;
 scalar_t__* p_vfile ;

void
verbose_enter_scroll()
{
    if (*p_vfile != NUL)
 ++msg_silent;
    else

 msg_scroll = TRUE;
}
