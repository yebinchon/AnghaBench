
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



 int KC_RSFT ;
 int PORTE ;




 int SEND_STRING (char*) ;
 int _QWERTY ;
 int backlight_step () ;
 int print (char*) ;
 int register_code (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 131:
      if (record->event.pressed) {
        print("mode just switched to qwerty and this is a huge string\n");
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        register_code(KC_RSFT);






      } else {
        unregister_code(KC_RSFT);



      }
      return 0;
      break;

    case 130:
      if (record->event.pressed) {
 SEND_STRING(" <- ");
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
 SEND_STRING(" %>%\n");
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
 SEND_STRING("################################################################################");
      }
      return 0;
      break;
  }
  return 1;
}
