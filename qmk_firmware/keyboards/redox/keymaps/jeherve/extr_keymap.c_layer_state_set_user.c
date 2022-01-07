
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int biton32 (int ) ;
 int rgblight_setrgb_orange () ;
 int rgblight_setrgb_red () ;
 int rgblight_setrgb_springgreen () ;
 int rgblight_setrgb_teal () ;
 int rgblight_setrgb_yellow () ;

uint32_t layer_state_set_user(uint32_t state) {
 switch (biton32(state)) {
  case 128:
   rgblight_setrgb_orange();
   break;
  case 129:
   rgblight_setrgb_springgreen();
   break;
  case 130:
   rgblight_setrgb_teal();
   break;
  case 131:
   rgblight_setrgb_red();
   break;
  default:
   rgblight_setrgb_yellow();
   break;
 }
 return state;
}
