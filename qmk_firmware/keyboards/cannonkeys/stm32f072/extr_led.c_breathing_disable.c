
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_set (int ) ;
 int breathing_interrupt_disable () ;
 int get_backlight_level () ;
 int printf (char*) ;

void breathing_disable(void)
{
    printf("breathing_disable()\n");
    breathing_interrupt_disable();

    backlight_set(get_backlight_level());
}
