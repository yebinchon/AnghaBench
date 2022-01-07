
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_ESC ;
 int KC_GRV ;
 int MODS_SHIFT_GUI_MASK ;

 int add_key (int ) ;
 int del_key (int ) ;
 int get_mods () ;
 int send_keyboard_report () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
      if (record->event.pressed) {
        if (get_mods() & MODS_SHIFT_GUI_MASK) {
          add_key(KC_GRV);
          send_keyboard_report();
        } else {
          add_key(KC_ESC);
          send_keyboard_report();
        }
      } else {
        if (get_mods() & MODS_SHIFT_GUI_MASK) {
          del_key(KC_GRV);
          send_keyboard_report();
        } else {
          del_key(KC_ESC);
          send_keyboard_report();
        }
      }

      return 0;

    default:
      return 1;
  }
}
