
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GUI_LED1 ;
 int MOD_MASK_GUI ;
 int MOD_MASK_SHIFT ;
 int RGB_CLEAR ;
 int SHFT_LED1 ;
 scalar_t__ _QWERTY ;
 scalar_t__ biton32 (int ) ;
 int layer_state ;
 int rgblight_setrgb_at (int ,int ) ;
 int rgblight_setrgb_gold_at (int ) ;
 int rgblight_setrgb_purple_at (int ) ;

void set_rgb_indicators(uint8_t this_mod, uint8_t this_osm) {
  if (biton32(layer_state) == _QWERTY) {
    if ((this_mod | this_osm) & MOD_MASK_SHIFT) {
      rgblight_setrgb_gold_at(SHFT_LED1);
    } else {
      rgblight_setrgb_at(RGB_CLEAR, SHFT_LED1);
    }

    if ((this_mod | this_osm) & MOD_MASK_GUI) {
      rgblight_setrgb_purple_at(GUI_LED1);
    } else {
      rgblight_setrgb_at(RGB_CLEAR, GUI_LED1);
    }
  }
}
