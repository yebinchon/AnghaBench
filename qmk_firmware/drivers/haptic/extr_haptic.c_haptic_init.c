
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int raw; } ;


 int DRV_init () ;
 int debug_enable ;
 int dprintf (char*) ;
 int eeconfig_debug_haptic () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_haptic () ;
 TYPE_1__ haptic_config ;
 int haptic_reset () ;
 int solenoid_setup () ;

void haptic_init(void) {
    debug_enable = 1;
    if (!eeconfig_is_enabled()) {
        eeconfig_init();
    }
    haptic_config.raw = eeconfig_read_haptic();
    if (haptic_config.mode < 1) {
        haptic_config.mode = 1;
    }
    if (!haptic_config.mode) {
        dprintf("No haptic config found in eeprom, setting default configs\n");
        haptic_reset();
    }
    eeconfig_debug_haptic();
}
