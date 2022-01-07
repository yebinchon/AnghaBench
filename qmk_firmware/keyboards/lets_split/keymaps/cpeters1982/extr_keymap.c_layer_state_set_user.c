
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;
typedef int uint32_t ;



 unsigned long _COLEMAK ;
 unsigned long _DVORAK ;


 int biton32 (int ) ;
 unsigned long eeconfig_read_default_layer () ;
 scalar_t__ rgb_layer_change ;
 int rgblight_mode (int) ;
 int rgblight_set_blue ;
 int rgblight_set_green ;
 int rgblight_set_magenta ;
 int rgblight_set_orange ;
 int rgblight_set_purple ;
 int rgblight_set_teal ;

uint32_t layer_state_set_user(uint32_t state) {
  return state;
}
