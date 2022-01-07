
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int BASE_COLOR ;
 int RGB_AZURE ;
 int RGB_PURPLE ;
 int get_highest_layer (int ) ;
 int rgblight_setrgb (int ) ;

layer_state_t layer_state_set_user(layer_state_t state) {
  switch (get_highest_layer(state)) {
    case 0:
      rgblight_setrgb(BASE_COLOR);
      break;
    case 1:
      rgblight_setrgb(RGB_AZURE);
      break;
    case 2:
      rgblight_setrgb(RGB_PURPLE);
      break;
    }
  return state;
}
