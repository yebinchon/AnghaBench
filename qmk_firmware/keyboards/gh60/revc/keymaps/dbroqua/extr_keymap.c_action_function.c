
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int rgblight_decrease_hue () ;
 int rgblight_decrease_sat () ;
 int rgblight_decrease_val () ;
 int rgblight_increase_hue () ;
 int rgblight_increase_sat () ;
 int rgblight_increase_val () ;
 int rgblight_step () ;
 int rgblight_toggle () ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt) {
  switch (id) {
    case 128:
      if (record->event.pressed) {
        rgblight_toggle();
      }
      break;
    case 132:
      if (record->event.pressed) {
        rgblight_increase_hue();
      }
      break;
    case 135:
      if (record->event.pressed) {
        rgblight_decrease_hue();
      }
      break;
    case 131:
      if (record->event.pressed) {
        rgblight_increase_sat();
      }
      break;
    case 134:
      if (record->event.pressed) {
        rgblight_decrease_sat();
      }
      break;
    case 130:
      if (record->event.pressed) {
        rgblight_increase_val();
      }
      break;
    case 133:
      if (record->event.pressed) {
        rgblight_decrease_val();
      }
      break;
    case 129:
      if (record->event.pressed) {
        rgblight_step();
      }
      break;
  }
}
