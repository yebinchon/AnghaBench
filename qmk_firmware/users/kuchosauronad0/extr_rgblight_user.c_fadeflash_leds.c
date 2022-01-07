
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int base_hue ;
 int base_sat ;
 int rgblight_fade_helper (int) ;
 int rgblight_sethsv_noeeprom (int ,int ,int ) ;

void fadeflash_leds(uint8_t hue, uint8_t sat, uint8_t val){




  rgblight_fade_helper(0);
  rgblight_sethsv_noeeprom(hue, sat, 0);
  rgblight_fade_helper(1);
  rgblight_fade_helper(0);
  rgblight_sethsv_noeeprom(base_hue, base_sat, 0);
  rgblight_fade_helper(1);
}
