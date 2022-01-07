
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;






 int tetris_key_presses ;
 scalar_t__ tetris_keypress ;
 scalar_t__ tetris_running ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    tetris_key_presses++;
  }

  if (tetris_running && record->event.pressed) {
    tetris_keypress = 0;
    switch (keycode) {
    case 128: tetris_keypress = 1; break;
    case 130: tetris_keypress = 2; break;
    case 131: tetris_keypress = 3; break;
    case 129: tetris_keypress = 4; break;


    }
    if (tetris_keypress != 0) {
      return 0;
    }
  }

  return 1;
}
