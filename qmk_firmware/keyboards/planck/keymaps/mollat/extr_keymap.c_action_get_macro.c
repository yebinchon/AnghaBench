
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int macro_t ;
typedef int keyrecord_t ;


 int DOWN (int ) ;
 int END ;
 int KC_0 ;
 int KC_1 ;
 int KC_2 ;
 int KC_3 ;
 int KC_4 ;
 int KC_5 ;
 int KC_6 ;
 int KC_7 ;
 int KC_8 ;
 int KC_B ;
 int KC_C ;
 int KC_ENT ;
 int KC_ESC ;
 int KC_L ;
 int KC_LCTL ;
 int KC_LSFT ;
 int KC_N ;
 int KC_P ;
 int KC_Q ;
 int KC_SCLN ;
 int KC_W ;
 int const* MACRODOWN (int ,int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int TYPE (int ) ;
 int UP (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 0:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_0), END );
          break;
        case 1:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_1), END );
          break;
        case 2:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_2), END );
          break;
        case 3:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_3), END );
          break;
        case 4:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_4), END );
          break;
        case 5:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_5), END );
          break;
        case 6:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_6), END );
          break;
        case 7:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_7), END );
          break;
        case 8:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_8), END );
          break;
        case 9:

          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_L), END );
          break;

        case 10:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_N), END );
          break;

        case 11:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_P), END );
          break;

        case 12:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), TYPE(KC_C), END );
          break;
        case 13:

          return MACRODOWN( TYPE(KC_ESC), DOWN(KC_LSFT), TYPE(KC_SCLN), UP(KC_LSFT), TYPE(KC_W), TYPE(KC_ENT), END );
          break;
        case 14:

          return MACRODOWN( TYPE(KC_ESC), DOWN(KC_LSFT), TYPE(KC_SCLN), UP(KC_LSFT), TYPE(KC_Q), TYPE(KC_ENT), END );
          break;

        case 15:
          return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_B), UP(KC_LCTL), END );
          break;
      }
    return MACRO_NONE;
}
