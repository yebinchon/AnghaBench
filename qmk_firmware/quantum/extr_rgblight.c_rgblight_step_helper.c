
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; } ;


 int RGBLIGHT_MODES ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode_eeprom_helper (int,int) ;

void rgblight_step_helper(bool write_to_eeprom) {
    uint8_t mode = 0;
    mode = rgblight_config.mode + 1;
    if (mode > RGBLIGHT_MODES) {
        mode = 1;
    }
    rgblight_mode_eeprom_helper(mode, write_to_eeprom);
}
