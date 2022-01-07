
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_activate_getch2 () ;
 int do_deactivate_getch2 () ;
 int getch2_enabled ;
 scalar_t__ getpgrp () ;
 scalar_t__ tcgetpgrp (int ) ;
 int tty_in ;

__attribute__((used)) static void getch2_poll(void)
{
    if (!getch2_enabled)
        return;


    int newstatus = (tcgetpgrp(tty_in) == getpgrp());


    if (newstatus)
        do_activate_getch2();
    else
        do_deactivate_getch2();
}
