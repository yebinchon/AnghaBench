
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREATHING_HALT_OFF ;
 int BREATHING_HALT_ON ;
 int breathing_halt ;
 scalar_t__ get_backlight_level () ;

void breathing_self_disable(void)
{
  if (get_backlight_level() == 0)
    breathing_halt = BREATHING_HALT_OFF;
  else
    breathing_halt = BREATHING_HALT_ON;
}
