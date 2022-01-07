
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int biton32 (scalar_t__) ;
 int edit ;
 int hue ;
 int mode ;
 int rgblight_get_hue () ;
 int rgblight_get_mode () ;
 int rgblight_get_sat () ;
 int rgblight_get_val () ;
 int rgblight_mode (int) ;
 int rgblight_sethsv (int ,int ,int ) ;
 int rgblight_setrgb (int,int,int) ;
 int sat ;
 int val ;

uint32_t layer_state_set_user(uint32_t state) {

  if (state == 0 && edit == 1) {
    mode = rgblight_get_mode();
    hue = rgblight_get_hue();
    sat = rgblight_get_sat();
    val = rgblight_get_val();
    edit = 0;
  }

  switch (biton32(state)) {
    case 1:
      rgblight_mode(1);
      rgblight_setrgb(0xD3, 0x7F, 0xED);
      break;
    case 2:
      rgblight_mode(1);
      rgblight_setrgb(0xFF, 0x00, 0x00);
      edit = 1;
      break;
    default:
      rgblight_mode(mode);
      rgblight_sethsv(hue, sat, val);
      break;
  }
  return state;
}
