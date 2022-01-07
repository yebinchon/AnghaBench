
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ level; } ;


 int BREATHING_HALT_ON ;
 int breathing_halt ;
 int breathing_interrupt_enable () ;
 int breathing_max () ;
 int breathing_min () ;
 TYPE_1__ kb_backlight_config ;

void breathing_pulse(void)
{
    if (kb_backlight_config.level == 0)
      breathing_min();
    else
      breathing_max();
    breathing_halt = BREATHING_HALT_ON;
    breathing_interrupt_enable();
}
