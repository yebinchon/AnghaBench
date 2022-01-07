
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; scalar_t__ enable; } ;


 int eeconfig_update_haptic (int ) ;
 TYPE_1__ haptic_config ;
 int haptic_disable () ;
 int haptic_enable () ;

void haptic_toggle(void) {
    if (haptic_config.enable) {
        haptic_disable();
    } else {
        haptic_enable();
    }
    eeconfig_update_haptic(haptic_config.raw);
}
