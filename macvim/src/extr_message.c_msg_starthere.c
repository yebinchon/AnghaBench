
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int cmdline_row ;
 int lines_left ;
 int msg_didany ;

void
msg_starthere()
{
    lines_left = cmdline_row;
    msg_didany = FALSE;
}
