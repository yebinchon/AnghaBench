
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




 int KC_C ;
 int KC_V ;
 int LCTL (int ) ;

 int SEND_STRING (char*) ;
 int tap_code16 (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {



 switch (keycode) {
  case 129:
   if (record->event.pressed) {
     SEND_STRING("Hello, world!");
    } else {
     SEND_STRING("Goodbye, cruel world!");
    }
   break;
   case 130:
    if (record->event.pressed) {
     tap_code16(LCTL(KC_C));
    }
   break;
   case 128:
    if (record->event.pressed) {
     tap_code16(LCTL(KC_V));
    }
   break;
  return 0;
 }
 return 1;
}
