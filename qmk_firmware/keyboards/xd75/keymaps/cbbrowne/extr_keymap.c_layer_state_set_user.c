
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;







 int biton32 (int ) ;
 int rgblight_sethsv (int,int,int) ;
 int rgblight_sethsv_blue () ;
 int rgblight_sethsv_green () ;
 int rgblight_sethsv_orange () ;
 int rgblight_sethsv_red () ;
 int rgblight_sethsv_white () ;

uint32_t layer_state_set_user(uint32_t state) {
  switch(biton32(state)) {
  case 129:
    rgblight_sethsv_white();
    break;
  case 130:
    rgblight_sethsv_blue();
    break;
  case 128:
    rgblight_sethsv_green();
    break;
  case 132:
    rgblight_sethsv_orange();
    break;
  case 131:
    rgblight_sethsv_red();
    break;
  default:
    rgblight_sethsv(325,255,255);
    break;
  }
  return state;
}
