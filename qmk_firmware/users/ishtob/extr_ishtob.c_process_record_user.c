
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int clear_keyboard () ;
 scalar_t__ process_record_keymap (int,TYPE_2__*) ;
 scalar_t__ process_record_secrets (int,TYPE_2__*) ;
 int reset_keyboard () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    case 128:
      if (record->event.pressed) {
        clear_keyboard();
        reset_keyboard();
      }
      return 0;
      break;
    }
  return process_record_keymap(keycode, record) && process_record_secrets(keycode, record);
}
