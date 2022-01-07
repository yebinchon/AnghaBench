
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int HSV_AZURE ;
 int RGBLIGHT_MODE_STATIC_LIGHT ;
 int RGB_CLEAR ;





 int get_highest_layer (int ) ;
 int rgblight_mode (int ) ;
 int rgblight_sethsv_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom_blue () ;
 int rgblight_sethsv_noeeprom_green () ;
 int rgblight_sethsv_noeeprom_red () ;

layer_state_t layer_state_set_rgb(layer_state_t state) {
  switch (get_highest_layer(state)) {
    case 129:
      rgblight_mode(RGBLIGHT_MODE_STATIC_LIGHT);
      rgblight_sethsv_noeeprom(RGB_CLEAR);
      break;
    case 128:
      rgblight_sethsv_noeeprom_red();
      break;
    case 131:
      rgblight_sethsv_noeeprom_green();
      break;
    case 130:
      rgblight_sethsv_noeeprom_blue();




      break;
    case 132:
      rgblight_sethsv_noeeprom(HSV_AZURE);
      break;
    default:
      break;
    }
  return state;
}
