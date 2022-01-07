
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int keyrecord_t ;


 scalar_t__ KC_WAKE ;
 int RGBLIGHT_MODE_STATIC_LIGHT ;
 int _initialized ;
 int _leds_dirty ;
 int rgblight_mode (int ) ;
 int rgblight_sethsv_eeprom_helper (int ,int ,int ,int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    if (!_initialized) {

        rgblight_mode(RGBLIGHT_MODE_STATIC_LIGHT);
        _initialized = 1;
    };
    if (keycode == KC_WAKE) {

        rgblight_sethsv_eeprom_helper(0, 0, 0, 0);
    } else {
        _leds_dirty = 1;
    };
    return 1;
}
