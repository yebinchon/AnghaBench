
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;







 int biton32 (int ) ;
 int rgblight_sethsv_noeeprom_cyan () ;
 int rgblight_sethsv_noeeprom_magenta () ;
 int rgblight_sethsv_noeeprom_orange () ;
 int rgblight_sethsv_noeeprom_red () ;
 int rgblight_sethsv_noeeprom_white () ;

uint32_t layer_state_set_user(uint32_t state) {
  switch (biton32(state)) {
    case 131:
        rgblight_sethsv_noeeprom_cyan();
        break;
    case 130:
        rgblight_sethsv_noeeprom_magenta();
        break;
    case 129:
        rgblight_sethsv_noeeprom_red();
        break;
    case 128:
        rgblight_sethsv_noeeprom_orange();
        break;
    case 132:
    default:
        rgblight_sethsv_noeeprom_white();
        break;
    }
  return state;
}
