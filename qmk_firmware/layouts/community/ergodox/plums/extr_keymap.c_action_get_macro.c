
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_6__ {int count; int interrupted; } ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_7__ {TYPE_2__ tap; TYPE_1__ event; } ;
typedef TYPE_3__ keyrecord_t ;


 int A ;
 int D (int ) ;
 int DOWN (int ) ;
 int END ;
 int KC_GRV ;
 int KC_LCTL ;
 int KC_RCTL ;
 int LCTL ;
 int const* MACRO (int ,int ,int ,int ) ;
 int const* MACRO_NONE ;
 int T (int ) ;
 int TYPE (int ) ;
 int U (int ) ;
 int UP (int ) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  switch(id) {
    case 0:
      if (record->event.pressed) {
        if (record->tap.count) {
          if (record->tap.interrupted) {
            record->tap.count = 0;

            register_code(KC_LCTL);
          } else {

            return MACRO( D(LCTL), T(A), U(LCTL), END );
          }
        } else {

          register_code(KC_LCTL);
        }
      } else {
        if (record->tap.count) {

        } else {

          unregister_code(KC_LCTL);
        }
        record->tap.count = 0;
      }
      break;
    case 1:
      if (record->event.pressed) {
        if (record->tap.count) {
          if (record->tap.interrupted) {
            record->tap.count = 0;

            register_code(KC_RCTL);
          } else {

            return MACRO( DOWN(KC_RCTL), TYPE(KC_GRV), UP(KC_RCTL), END );
          }
        } else {

          register_code(KC_RCTL);
        }
      } else {
        if (record->tap.count) {

        } else {

          unregister_code(KC_RCTL);
        }
        record->tap.count = 0;
      }
      break;
  }
  return MACRO_NONE;
}
