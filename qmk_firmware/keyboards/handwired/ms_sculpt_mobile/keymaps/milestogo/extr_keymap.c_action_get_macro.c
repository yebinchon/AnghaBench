
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_8__ {int mods; } ;


 int BABL_NUM_MACROS ;
 int BABL_START_NUM ;
 int D (int ) ;

 int END ;
 int ESC ;
 int KC_D ;
 int KC_LGUI ;
 int KC_RSFT ;
 int KC_V ;
 int LSFT ;
 int const* MACRO (int ,int ,int ,int ,int ) ;
 int const* MACRO_NONE ;
 int MOD_BIT (int ) ;
 int SCLN ;
 int T (int ) ;
 int U (int ) ;

 int babblePaste (TYPE_2__*,int) ;
 int clear_keyboard_but_mods () ;
 TYPE_3__* keyboard_report ;
 int register_code (int ) ;
 int unregister_code (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 0:
          if (record->event.pressed) {
            register_code(KC_RSFT);
          } else {
            unregister_code(KC_RSFT);
          }
        break;



  case 129:
  if(keyboard_report->mods & MOD_BIT(KC_LGUI) ) {
   if (record->event.pressed) {
       clear_keyboard_but_mods();
     register_code(KC_V);
       } else {
     unregister_code(KC_V);
      }
  } else {
            if (record->event.pressed) {
            register_code(KC_D);
            } else {
             unregister_code(KC_D);
      }
  }
 break;

 case 128:
   if (record->event.pressed) {
   return MACRO( T(ESC),D(LSFT),T(SCLN),U(LSFT), END );
   }
 break;




 default:
     return MACRO_NONE;
    }


return MACRO_NONE;
}
