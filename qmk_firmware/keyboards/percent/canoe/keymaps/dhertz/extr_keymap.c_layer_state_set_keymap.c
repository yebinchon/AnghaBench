
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int biton32 (int ) ;
 int rgblight_sethsv_noeeprom_cyan () ;
 int rgblight_sethsv_noeeprom_magenta () ;

uint32_t layer_state_set_keymap(uint32_t state) {
    switch (biton32(state)) {
        case 1:
            rgblight_sethsv_noeeprom_magenta();
            break;
        default:
            rgblight_sethsv_noeeprom_cyan();
            break;
    }
    return state;
}
