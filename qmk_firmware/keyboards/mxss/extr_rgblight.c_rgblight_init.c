
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; scalar_t__ enable; void* raw; } ;


 int debug_enable ;
 int dprintf (char*) ;
 int eeconfig_debug_rgblight () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 void* eeconfig_read_rgblight () ;
 int eeconfig_update_rgblight_default () ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_timer_init () ;

void rgblight_init(void) {
  debug_enable = 1;
  dprintf("rgblight_init called.\n");
  dprintf("rgblight_init start!\n");
  if (!eeconfig_is_enabled()) {
    dprintf("rgblight_init eeconfig is not enabled.\n");
    eeconfig_init();
    eeconfig_update_rgblight_default();
  }
  rgblight_config.raw = eeconfig_read_rgblight();
  if (!rgblight_config.mode) {
    dprintf("rgblight_init rgblight_config.mode = 0. Write default values to EEPROM.\n");
    eeconfig_update_rgblight_default();
    rgblight_config.raw = eeconfig_read_rgblight();
  }
  eeconfig_debug_rgblight();





  if (rgblight_config.enable) {
    rgblight_mode_noeeprom(rgblight_config.mode);
  }
}
