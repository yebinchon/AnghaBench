
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; int val; int sat; int hue; int mode; int enable; } ;


 int dprintf (char*,...) ;
 TYPE_1__ rgblight_config ;

void eeconfig_debug_rgblight(void) {
    dprintf("rgblight_config EEPROM:\n");
    dprintf("rgblight_config.enable = %d\n", rgblight_config.enable);
    dprintf("rghlight_config.mode = %d\n", rgblight_config.mode);
    dprintf("rgblight_config.hue = %d\n", rgblight_config.hue);
    dprintf("rgblight_config.sat = %d\n", rgblight_config.sat);
    dprintf("rgblight_config.val = %d\n", rgblight_config.val);
    dprintf("rgblight_config.speed = %d\n", rgblight_config.speed);
}
