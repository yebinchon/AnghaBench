
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


 int CHECK_BIT (int ,int) ;
 int CLEAR_BIT (int ,int ) ;


 int SEND_STRING (int ) ;
 int SET_BIT (int ,int ) ;
 int SS_DOWN (int ) ;
 int SS_UP (int ) ;
 int TOGGLE_BIT (int ,int) ;


 int X_LGUI ;
 int _FUNC ;
 int _MOUSE ;
 int keyboard_state ;
 int layer_off (int ) ;
 int layer_on (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {

    case 131:
      if (record->event.pressed) {
        layer_on(_FUNC);
        if (CHECK_BIT(keyboard_state, 1)) {
          layer_on(_MOUSE);
        }
        else {
          layer_off(_MOUSE);
        }

        SET_BIT(keyboard_state, 0);
      }

      else {
        layer_off(_FUNC);
        layer_off(_MOUSE);

        CLEAR_BIT(keyboard_state, 0);
      }
      break;

    case 130:
      if(record->event.pressed) {

        TOGGLE_BIT(keyboard_state, 1);



        if (CHECK_BIT(keyboard_state, 0)) {
          if (CHECK_BIT(keyboard_state, 1)) {
            layer_on(_MOUSE);
          }
          else {
            layer_off(_MOUSE);
          }
        }
      }
      break;

    case 128:
      if (record->event.pressed) {

        TOGGLE_BIT(keyboard_state, 2);
      }
      break;


    case 129:

      if (!CHECK_BIT(keyboard_state, 2)) {
        if (record->event.pressed) {
          SEND_STRING(SS_DOWN(X_LGUI));
          return 0;
        }

        else {
          SEND_STRING(SS_UP(X_LGUI));
          return 0;
        }
      }
      break;
  }
  return 1;
}
