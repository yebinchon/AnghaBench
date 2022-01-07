
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; } ;


 int backlight_set (int ) ;
 int breathing_interrupt_disable () ;
 TYPE_1__ kb_backlight_config ;

void breathing_disable(void)
{
    breathing_interrupt_disable();

    backlight_set(kb_backlight_config.level);
}
