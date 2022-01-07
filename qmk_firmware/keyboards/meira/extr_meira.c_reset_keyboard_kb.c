
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MCUSR ;
 int reset_keyboard () ;
 int wdt_disable () ;
 int wdt_reset () ;
 int xprintf (char*) ;

void reset_keyboard_kb(){





    xprintf("programming!\n");
    reset_keyboard();
}
