
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


 int KC_CAPS ;
 int KC_ENT ;
 int KC_LEFT ;





 int SEND_STRING (char*) ;
 int _CAPS ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int tap_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {

    case 132:
      if (record->event.pressed) {
        SEND_STRING("#include <>");
        tap_code(KC_LEFT);
      }
      return 0;
    case 131:
      if (record->event.pressed) {
        SEND_STRING("git pull");
        tap_code(KC_ENT);
      }
      return 0;
    case 130:
      if (record->event.pressed) {
        SEND_STRING("git push");
        tap_code(KC_ENT);
      }
      return 0;
    case 129:
      if (record->event.pressed) {
        layer_on(_CAPS);
        tap_code(KC_CAPS);
      }
      return 0;
    case 128:
      if (record->event.pressed) {
        layer_off(_CAPS);
        tap_code(KC_CAPS);
      }
      return 0;
    default:
      return 1;
  }
  return 1;
}
