
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msg_check_screen () ;
 scalar_t__ swapping_screen () ;
 int termcap_active ;

int
msg_use_printf()
{
    return (!msg_check_screen()



     || (swapping_screen() && !termcap_active)
        );
}
