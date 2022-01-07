
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endwin () ;
 int exit (int ) ;
 scalar_t__ flag_monitor ;
 scalar_t__ flag_monitor_continuous ;

void int_handler(int sig)
{
if(flag_monitor || flag_monitor_continuous)
    endwin();
exit(0);
}
