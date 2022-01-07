
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


 int KC_ESC ;
 int KC_GRV ;
 int MODS_CTRL_MASK ;
 int add_key (int ) ;
 int del_key (int ) ;
 int get_mods () ;
 int rgblight_decrease_hue () ;
 int rgblight_decrease_sat () ;
 int rgblight_decrease_val () ;
 int rgblight_increase_hue () ;
 int rgblight_increase_sat () ;
 int rgblight_increase_val () ;
 int rgblight_step () ;
 int rgblight_toggle () ;
 int send_keyboard_report () ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt) {
  switch (id) {
    static uint8_t shift_esc_shift_mask;

    case 128:
      shift_esc_shift_mask = get_mods()&MODS_CTRL_MASK;
      if (record->event.pressed) {
        if (shift_esc_shift_mask) {
          add_key(KC_GRV);
          send_keyboard_report();
        } else {
          add_key(KC_ESC);
          send_keyboard_report();
        }
      } else {
        if (shift_esc_shift_mask) {
          del_key(KC_GRV);
          send_keyboard_report();
        } else {
          del_key(KC_ESC);
          send_keyboard_report();
        }
      }
      break;
    }
}
