
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RGBLIGHT_MODE_RAINBOW_SWIRL ;
 int RGBLIGHT_MODE_STATIC_LIGHT ;

 int biton32 (int ) ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom (int ,int,int) ;

uint32_t layer_state_set_user(uint32_t state) {
  switch (biton32(state)) {
    case 128:
      rgblight_sethsv_noeeprom(0,255,255);
      rgblight_mode_noeeprom(RGBLIGHT_MODE_RAINBOW_SWIRL);
      break;
    default:
      rgblight_sethsv_noeeprom(0,0,255);
      rgblight_mode_noeeprom(RGBLIGHT_MODE_STATIC_LIGHT);
      break;
  }

  return state;
}
