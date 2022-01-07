
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int val; int sat; scalar_t__ hue; } ;


 scalar_t__ RGBLIGHT_HUE_STEP ;
 TYPE_1__ rgblight_config ;
 int rgblight_sethsv_eeprom_helper (scalar_t__,int ,int ,int) ;

void rgblight_decrease_hue_helper(bool write_to_eeprom) {
    uint8_t hue = rgblight_config.hue - RGBLIGHT_HUE_STEP;
    rgblight_sethsv_eeprom_helper(hue, rgblight_config.sat, rgblight_config.val, write_to_eeprom);
}
