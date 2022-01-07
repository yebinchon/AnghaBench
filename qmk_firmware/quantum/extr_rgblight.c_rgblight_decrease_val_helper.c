
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int sat; int hue; int val; } ;


 int RGBLIGHT_VAL_STEP ;
 int qsub8 (int ,int ) ;
 TYPE_1__ rgblight_config ;
 int rgblight_sethsv_eeprom_helper (int ,int ,int ,int) ;

void rgblight_decrease_val_helper(bool write_to_eeprom) {
    uint8_t val = qsub8(rgblight_config.val, RGBLIGHT_VAL_STEP);
    rgblight_sethsv_eeprom_helper(rgblight_config.hue, rgblight_config.sat, val, write_to_eeprom);
}
