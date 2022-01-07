
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int restart; } ;
struct TYPE_3__ {int val; int sat; int hue; scalar_t__ mode; int raw; int enable; } ;


 scalar_t__ RGBLIGHT_MODES ;
 scalar_t__ RGBLIGHT_MODE_STATIC_LIGHT ;
 int RGBLIGHT_SPLIT_SET_CHANGE_MODE ;
 TYPE_2__ animation_status ;
 int dprintf (char*,scalar_t__) ;
 int eeconfig_update_rgblight (int ) ;
 scalar_t__ is_static_effect (scalar_t__) ;
 TYPE_1__ rgblight_config ;
 int rgblight_sethsv_noeeprom (int ,int ,int ) ;
 int rgblight_timer_disable () ;
 int rgblight_timer_enable () ;

void rgblight_mode_eeprom_helper(uint8_t mode, bool write_to_eeprom) {
    if (!rgblight_config.enable) {
        return;
    }
    if (mode < RGBLIGHT_MODE_STATIC_LIGHT) {
        rgblight_config.mode = RGBLIGHT_MODE_STATIC_LIGHT;
    } else if (mode > RGBLIGHT_MODES) {
        rgblight_config.mode = RGBLIGHT_MODES;
    } else {
        rgblight_config.mode = mode;
    }
    RGBLIGHT_SPLIT_SET_CHANGE_MODE;
    if (write_to_eeprom) {
        eeconfig_update_rgblight(rgblight_config.raw);
        dprintf("rgblight mode [EEPROM]: %u\n", rgblight_config.mode);
    } else {
        dprintf("rgblight mode [NOEEPROM]: %u\n", rgblight_config.mode);
    }
    if (is_static_effect(rgblight_config.mode)) {



    } else {



    }



    rgblight_sethsv_noeeprom(rgblight_config.hue, rgblight_config.sat, rgblight_config.val);
}
