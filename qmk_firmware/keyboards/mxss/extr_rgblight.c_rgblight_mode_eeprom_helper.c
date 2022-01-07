
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; int val; int sat; int hue; int raw; int enable; } ;


 int RGBLIGHT_MODES ;
 int eeconfig_update_rgblight (int ) ;
 TYPE_1__ rgblight_config ;
 int rgblight_sethsv_noeeprom (int ,int ,int ) ;
 int rgblight_timer_disable () ;
 int rgblight_timer_enable () ;
 int xprintf (char*,int) ;

void rgblight_mode_eeprom_helper(uint8_t mode, bool write_to_eeprom) {
  if (!rgblight_config.enable) {
    return;
  }
  if (mode < 1) {
    rgblight_config.mode = 1;
  } else if (mode > RGBLIGHT_MODES) {
    rgblight_config.mode = RGBLIGHT_MODES;
  } else {
    rgblight_config.mode = mode;
  }
  if (write_to_eeprom) {
    eeconfig_update_rgblight(rgblight_config.raw);
    xprintf("rgblight mode [EEPROM]: %u\n", rgblight_config.mode);
  } else {
    xprintf("rgblight mode [NOEEPROM]: %u\n", rgblight_config.mode);
  }
  if (rgblight_config.mode == 1) {



  } else if ((rgblight_config.mode >= 2 && rgblight_config.mode <= 24) ||
      rgblight_config.mode == 35 ) {
  } else if (rgblight_config.mode >= 25 && rgblight_config.mode <= 34) {





  }
  rgblight_sethsv_noeeprom(rgblight_config.hue, rgblight_config.sat, rgblight_config.val);
}
