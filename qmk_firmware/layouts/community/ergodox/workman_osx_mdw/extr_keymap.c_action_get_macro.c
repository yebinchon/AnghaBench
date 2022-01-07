
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


 int BSLS ;
 int D (int ) ;
 int END ;
 int EQL ;
 int FN4 ;
 int KC_RSFT ;
 int LBRC ;
 int LSFT ;
 int const* MACRODOWN (int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int MINS ;
 int QUOT ;
 int RBRC ;
 int SLSH ;
 int T (int) ;
 int U (int ) ;
 int layer_clear () ;
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
        case 100:
          layer_clear();
          return MACRODOWN(D(LSFT), T(5), U(LSFT), T(FN4), END);
          break;
        case 101:
          layer_clear();
          return MACRODOWN(D(LSFT), T(7), U(LSFT), T(FN4), END);
          break;
        case 102:
          layer_clear();
          return MACRODOWN(D(LSFT), T(SLSH), U(LSFT), T(FN4), END);
          break;
        case 103:
          layer_clear();
          return MACRODOWN(D(LSFT), T(EQL), U(LSFT), T(FN4), END);
          break;
        case 104:
          layer_clear();
          return MACRODOWN(D(LSFT), T(2), U(LSFT), T(FN4), END);
          break;
        case 105:
          layer_clear();
          return MACRODOWN(D(LSFT), T(4), U(LSFT), T(FN4), END);
          break;
        case 106:
          layer_clear();
          return MACRODOWN(D(LSFT), T(MINS), U(LSFT), T(FN4), END);
          break;
        case 107:
          layer_clear();
          return MACRODOWN(T(LBRC), T(FN4), END);
          break;
        case 108:
          layer_clear();
          return MACRODOWN(T(RBRC), T(FN4), END);
          break;
        case 130:
          layer_clear();
          return MACRODOWN(D(LSFT), T(1), U(LSFT), T(FN4), END);
          break;
        case 109:
          layer_clear();
          return MACRODOWN(T(SLSH), T(FN4), END);
          break;
        case 110:
          layer_clear();
          return MACRODOWN(D(LSFT), T(9), U(LSFT), T(FN4), END);
          break;
        case 111:
          layer_clear();
          return MACRODOWN(T(EQL), T(FN4), END);
          break;
        case 112:
          layer_clear();
          return MACRODOWN(T(0), T(FN4), END);
          break;
        case 113:
          layer_clear();
          return MACRODOWN(D(LSFT), T(LBRC), U(LSFT), T(FN4), END);
          break;
        case 114:
          layer_clear();
          return MACRODOWN(D(LSFT), T(RBRC), U(LSFT), T(FN4), END);
          break;
        case 115:
          layer_clear();
          return MACRODOWN(T(1), T(FN4), END);
          break;
        case 116:
          layer_clear();
          return MACRODOWN(D(LSFT), T(8), U(LSFT), T(FN4), END);
          break;
        case 117:
          layer_clear();
          return MACRODOWN(D(LSFT), T(0), U(LSFT), T(FN4), END);
          break;
        case 118:
          layer_clear();
          return MACRODOWN(T(MINS), T(FN4), END);
          break;
        case 119:
          layer_clear();
          return MACRODOWN(D(LSFT), T(QUOT), U(LSFT), T(FN4), END);
          break;
        case 120:
          layer_clear();
          return MACRODOWN(T(6), T(FN4), END);
          break;
        case 121:
          layer_clear();
          return MACRODOWN(T(7), T(FN4), END);
          break;
        case 122:
          layer_clear();
          return MACRODOWN(T(8), T(FN4), END);
          break;
        case 123:
          layer_clear();
          return MACRODOWN(T(9), T(FN4), END);
          break;
        case 124:
          layer_clear();
          return MACRODOWN(D(LSFT), T(BSLS), U(LSFT), T(FN4), END);
          break;
        case 125:
          layer_clear();
          return MACRODOWN(T(BSLS), T(FN4), END);
          break;
        case 126:
          layer_clear();
          return MACRODOWN(T(2), T(FN4), END);
          break;
        case 127:
          layer_clear();
          return MACRODOWN(T(3), T(FN4), END);
          break;
        case 128:
          layer_clear();
          return MACRODOWN(T(4), T(FN4), END);
          break;
        case 129:
          layer_clear();
          return MACRODOWN(T(5), T(FN4), END);
          break;

        default:
        return MACRO_NONE;
      }
  return MACRO_NONE;
}
