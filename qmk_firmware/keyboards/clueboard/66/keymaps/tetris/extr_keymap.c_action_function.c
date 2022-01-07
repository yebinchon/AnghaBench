
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


 int GRAVE_MODS ;
 int KC_ESC ;
 int KC_GRV ;
 int add_key (int ) ;
 int del_key (int ) ;
 int get_mods () ;
 int send_keyboard_report () ;
 int tetris_key_presses ;
 int tetris_keypress ;
 int tetris_running ;
 int tetris_start (int ) ;
 int tetris_timer ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt) {
  static uint8_t mods_pressed;
  static bool mod_flag;

  switch (id) {
    case 0:

      if (tetris_running) {
        tetris_running = 0;
        return;
      }



      mods_pressed = get_mods()&GRAVE_MODS;

      if (record->event.pressed) {


        if (mods_pressed) {
          mod_flag = 1;
          add_key(KC_GRV);
          send_keyboard_report();
        } else {
          add_key(KC_ESC);
          send_keyboard_report();
        }
      } else {


        if (mod_flag) {
          mod_flag = 0;
          del_key(KC_GRV);
          send_keyboard_report();
        } else {
          del_key(KC_ESC);
          send_keyboard_report();
        }
      }
      break;
  case 1:
      if (record->event.pressed) {
        tetris_running = 1;
        tetris_timer = 0;
        tetris_keypress = 0;

        tetris_start(tetris_key_presses);
      }
      break;
  }
}
