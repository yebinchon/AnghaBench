
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;





 int get_highest_layer (int ) ;
 int rgblight_mode (int) ;
 int rgblight_setrgb (int,int,int) ;

layer_state_t layer_state_set_user(layer_state_t state) {
    switch (get_highest_layer(state)) {
    case 128:
        rgblight_setrgb (0xC3, 0xFF, 0xFF);
  rgblight_mode(5);
        break;
    case 129:
        rgblight_setrgb (0xFF, 0xFF, 0xFF);
  rgblight_mode(5);
        break;
    case 130:
        rgblight_mode(8);
        break;
    default:
        rgblight_mode(14);
        break;
    }
  return state;
}
