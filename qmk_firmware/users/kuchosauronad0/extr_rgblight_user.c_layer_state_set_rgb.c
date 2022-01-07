
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int layer_state_t ;
struct TYPE_2__ {scalar_t__ rgb_layer_change; } ;


 int RGBLIGHT_MODE_BREATHING ;
 int RGBLIGHT_MODE_STATIC_LIGHT ;




 int _MODS ;




 int biton32 (int ) ;
 int default_layer_state ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom_blue () ;
 int rgblight_sethsv_noeeprom_goldenrod () ;
 int rgblight_sethsv_noeeprom_green () ;
 int rgblight_sethsv_noeeprom_magenta () ;
 int rgblight_sethsv_noeeprom_pink () ;
 int rgblight_sethsv_noeeprom_red () ;
 int rgblight_sethsv_noeeprom_white () ;
 TYPE_1__ userspace_config ;

layer_state_t layer_state_set_rgb(layer_state_t state) {
  return state;
}
