
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MCUSR ;
 int force_issi_refresh () ;
 int reset_keyboard () ;
 int set_rgb (int,int,int,int) ;
 int wdt_disable () ;
 int wdt_reset () ;

void reset_keyboard_kb(){





    set_rgb(31, 0x00, 0xFF, 0xFF);
    set_rgb(32, 0x00, 0xFF, 0xFF);
    force_issi_refresh();
    reset_keyboard();
}
