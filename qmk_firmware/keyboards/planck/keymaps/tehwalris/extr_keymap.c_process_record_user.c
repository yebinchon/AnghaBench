
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


 int KC_A ;

 int KC_O ;

 int KC_U ;



 int is_left_shift_pressed ;
 int is_right_shift_pressed ;
 int press_umlaut_of (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 132:
      is_left_shift_pressed = record->event.pressed;
      break;
    case 131:
      is_right_shift_pressed = record->event.pressed;
      break;
    case 130:
      if (record->event.pressed) {
        press_umlaut_of(KC_A);
      }
      break;
    case 129:
      if (record->event.pressed) {
        press_umlaut_of(KC_O);
      }
      break;
    case 128:
      if (record->event.pressed) {
        press_umlaut_of(KC_U);
      }
      break;
  }
  return 1;
}
