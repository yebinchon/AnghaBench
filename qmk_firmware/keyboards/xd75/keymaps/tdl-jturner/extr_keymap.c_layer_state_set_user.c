
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int biton32 (int ) ;
 int rgblight_setrgb_user_LYFK () ;
 int rgblight_setrgb_user_LYLT () ;
 int rgblight_setrgb_user_LYMD () ;
 int rgblight_setrgb_user_LYMED () ;
 int rgblight_setrgb_user_LYMOS () ;
 int rgblight_setrgb_user_LYNAV () ;
 int rgblight_setrgb_user_LYNUM () ;
 int rgblight_setrgb_user_LYSYS () ;
 int rgblight_setrgb_user_base () ;

uint32_t layer_state_set_user(uint32_t state) {
  switch(biton32(state)) {
    case 135:
      rgblight_setrgb_user_LYFK();
      break;
    case 132:
      rgblight_setrgb_user_LYMED();
      break;
    case 129:
      rgblight_setrgb_user_LYNUM();
      break;
    case 130:
      rgblight_setrgb_user_LYNAV();
      break;
    case 131:
      rgblight_setrgb_user_LYMOS();
      break;
    case 128:
      rgblight_setrgb_user_LYSYS();
      break;
    case 134:
      rgblight_setrgb_user_LYLT();
      break;
    case 133:
      rgblight_setrgb_user_LYMD();
      break;
    default:
      rgblight_setrgb_user_base();
      break;
  }
  return state;
}
