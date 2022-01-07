
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int biton32 (int ) ;
 int rgblight_sethsv_noeeprom (int,int,int) ;

uint32_t layer_state_set_user(uint32_t state) {
 switch (biton32(state)) {
  case 131: rgblight_sethsv_noeeprom(96, 255, 255); break;
  case 130: rgblight_sethsv_noeeprom(162, 255, 255); break;
  case 129:
  case 128: rgblight_sethsv_noeeprom(227, 255, 255); break;
  default: rgblight_sethsv_noeeprom(13, 255, 255); break;
 }
 return state;
}
