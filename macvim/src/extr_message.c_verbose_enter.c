
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NUL ;
 int msg_silent ;
 scalar_t__* p_vfile ;

void
verbose_enter()
{
    if (*p_vfile != NUL)
 ++msg_silent;
}
