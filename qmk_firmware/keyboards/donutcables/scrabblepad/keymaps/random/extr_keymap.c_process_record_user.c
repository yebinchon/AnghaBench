
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


 int KC_LSHIFT ;

 int keystroke ;
 int rand () ;
 int random_keycode () ;
 int register_code (int ) ;
 int shift_pressed ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 128:
      if (record->event.pressed) {
        keystroke = random_keycode();
        if (rand() % 2 > 0) {
          shift_pressed = 1;
          register_code(KC_LSHIFT);
        }
        register_code(keystroke);
      } else {
        if (shift_pressed > 0) {
          unregister_code(KC_LSHIFT);
        }
        unregister_code(keystroke);
      }

      return 0;

    default:
        return 1;
  }

  return 1;
}
