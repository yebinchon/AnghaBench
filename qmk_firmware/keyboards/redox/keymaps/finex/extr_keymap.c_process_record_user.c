
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
 int SEND_STRING (char*) ;
 char* SS_LSFT (char*) ;
 char* SS_RALT (char*) ;
 int _COLEMAKDHMK ;
 int _COLEMAKDHMK_MAC ;
 int _QWERTY ;
 int _QWERTY_MAC ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    switch(keycode) {
      case 134:
        SEND_STRING("->");
        return 0;
      case 138:
        SEND_STRING("=>");
        return 0;
      case 133:

        SEND_STRING(SS_RALT("'"));
        return 0;
      case 137:

        SEND_STRING(SS_RALT(SS_LSFT("\"")));
        return 0;
      case 139:

        SEND_STRING(SS_RALT("^"));
        return 0;
      case 132:

        SEND_STRING(SS_RALT(SS_LSFT("~")));
        return 0;
      case 136:
        SEND_STRING(":-) ");
        return 0;
      case 135:
        SEND_STRING(":-( ");
        return 0;
      case 142:

        SEND_STRING(SS_RALT("`"));
        return 0;
      case 141:
        SEND_STRING("{");
        return 0;
      case 140:
        SEND_STRING("}");
        return 0;
      case 129:
        if (record->event.pressed) {
          set_single_persistent_default_layer(_QWERTY);
        }
        return 0;
        break;
      case 131:
        if (record->event.pressed) {
          set_single_persistent_default_layer(_COLEMAKDHMK);
        }
        return 0;
        break;
      case 128:
        if (record->event.pressed) {
          set_single_persistent_default_layer(_QWERTY_MAC);
        }
        return 0;
        break;
      case 130:
        if (record->event.pressed) {
          set_single_persistent_default_layer(_COLEMAKDHMK_MAC);
        }
        return 0;
        break;
    }
  }
  return 1;
}
