
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; scalar_t__ enable; } ;


 int eeconfig_update_haptic (int ) ;
 TYPE_1__ haptic_config ;
 int xprintf (char*,scalar_t__) ;

void haptic_disable(void) {
    haptic_config.enable = 0;
    xprintf("haptic_config.enable = %u\n", haptic_config.enable);
    eeconfig_update_haptic(haptic_config.raw);
}
