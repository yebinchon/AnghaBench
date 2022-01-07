
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ level; } ;


 int BREATHING_HALT_OFF ;
 int BREATHING_HALT_ON ;
 int breathing_halt ;
 TYPE_1__ kb_backlight_config ;

void breathing_self_disable(void)
{
  if (kb_backlight_config.level == 0)
    breathing_halt = BREATHING_HALT_OFF;
  else
    breathing_halt = BREATHING_HALT_ON;
}
