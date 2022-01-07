
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
 int KC_LGUI ;
 int MOD_BIT (int ) ;
 int add_key (int ) ;
 int del_key (int ) ;
 int get_mods () ;
 int send_keyboard_report () ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt) {
  static uint8_t esc_grv_mask;
  switch (id) {
    case 128:
      esc_grv_mask = get_mods() & MOD_BIT(KC_LGUI);
      if (record->event.pressed) {
        if (esc_grv_mask) {
          add_key(KC_GRV);
          send_keyboard_report();
        } else {
          add_key(KC_ESC);
          send_keyboard_report();
        }
      } else {
        if (esc_grv_mask) {
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
