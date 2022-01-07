
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int D (int ) ;
 int END ;
 int I (int) ;
 int KC_RSFT ;
 int LALT ;
 int const* MACRO (int ,int ,int ,int ,int ,int ,int ) ;
 int const* MACRO_NONE ;
 int P1 ;
 int P5 ;
 int P6 ;
 int T (int ) ;
 int U (int ) ;
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
      case 3:
        if (record->event.pressed) {
          return MACRO( I(255), D(LALT), T(P1), T(P5), T(P6), U(LALT), END );
      }
        break;
      }
    return MACRO_NONE;
}
