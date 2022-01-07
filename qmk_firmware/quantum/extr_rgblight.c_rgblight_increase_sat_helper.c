
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int val; int hue; int sat; } ;


 int RGBLIGHT_SAT_STEP ;
 int qadd8 (int ,int ) ;
 TYPE_1__ rgblight_config ;
 int rgblight_sethsv_eeprom_helper (int ,int ,int ,int) ;

void rgblight_increase_sat_helper(bool write_to_eeprom) {
    uint8_t sat = qadd8(rgblight_config.sat, RGBLIGHT_SAT_STEP);
    rgblight_sethsv_eeprom_helper(rgblight_config.hue, sat, rgblight_config.val, write_to_eeprom);
}
