
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int SEND_STRING (char*) ;
 char* SS_TAP (int ) ;
 int X_ENTER ;

 int persistent_default_layer_set (unsigned long) ;
 int process_record_keymap (int,TYPE_2__*) ;
 int reset_keyboard () ;
 int rgblight_enable () ;
 int rgblight_mode (int) ;
 int rgblight_setrgb (int,int,int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
      persistent_default_layer_set(1UL << 128);
      return 0;
      break;
    case 131:
      if (!record->event.pressed) {
        SEND_STRING("make alu84:TurboMech:dfu");
        SEND_STRING(SS_TAP(X_ENTER));
    }
    return 0;
    break;
    case 130:
      if (!record->event.pressed) {
        SEND_STRING("cd QMK/qmk_firmware");
        SEND_STRING(SS_TAP(X_ENTER));
      }
      return 0;
      break;
    case 129:
      if (!record->event.pressed) {






        reset_keyboard();
      }
      return 0;
      break;
      return 1;
      break;
  }


 return process_record_keymap(keycode, record);

}
