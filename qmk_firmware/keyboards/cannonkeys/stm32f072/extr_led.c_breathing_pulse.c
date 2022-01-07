
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREATHING_HALT_ON ;
 int breathing_halt ;
 int breathing_interrupt_enable () ;
 int breathing_max () ;
 int breathing_min () ;
 scalar_t__ get_backlight_level () ;

void breathing_pulse(void)
{
    if (get_backlight_level() == 0)
      breathing_min();
    else
      breathing_max();
    breathing_halt = BREATHING_HALT_ON;
    breathing_interrupt_enable();
}
