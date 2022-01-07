
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


 int DOWN (int ) ;
 int END ;
 int ENT ;
 int J ;
 int KC_2 ;
 int KC_A ;
 int KC_C ;
 int KC_DOT ;
 int KC_F ;
 int KC_G ;
 int KC_I ;
 int KC_L ;
 int KC_LCTL ;
 int KC_LSFT ;
 int KC_M ;
 int KC_O ;
 int KC_RSFT ;
 int KC_V ;
 int KC_X ;
 int const* MACRODOWN (int ,int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int MINS ;
 int T (int) ;
 int TYPE (int ) ;
 int UP (int ) ;
 int W ;
 int _CUSTOM ;




 int backlight_step () ;
 int layer_off (int const) ;
 int layer_on (int const) ;
 int register_code (int ) ;
 int unregister_code (int ) ;
 int update_tri_layer (int const,int const,int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch(id) {
    case 128:
 if (record->event.pressed) {
     layer_on(128);
     update_tri_layer(130, 128, _CUSTOM);
 } else {
     layer_off(128);
     update_tri_layer(130, 128, _CUSTOM);
 }
 break;
    case 130:
 if (record->event.pressed) {
     layer_on(130);
     update_tri_layer(130, 128, _CUSTOM);
 } else {
     layer_off(130);
     update_tri_layer(130, 128, _CUSTOM);
 }
 break;
    case 139:
 if (record->event.pressed) {
     register_code(KC_RSFT);



 } else {
     unregister_code(KC_RSFT);
 }
 break;
    case 137:
     return MACRODOWN(T(9), T(9), T(9), T(MINS),T(9), T(9), T(9), T(MINS),T(9), T(9), T(9), T(9),END);
    case 136:
     return MACRODOWN(T(ENT), T(ENT), T(MINS), T(J), T(W), END);
    case 135:
     return MACRODOWN( DOWN(KC_LSFT), TYPE(KC_L), UP(KC_LSFT), END );
    case 134:
     return MACRODOWN( DOWN(KC_LSFT), TYPE(KC_F), UP(KC_LSFT), END );
    case 133:
     return MACRODOWN( DOWN(KC_LSFT), TYPE(KC_I), UP(KC_LSFT), END );
    case 132:
     return MACRODOWN( TYPE(KC_F),
        DOWN(KC_LSFT), TYPE(KC_2), UP(KC_LSFT),
        TYPE(KC_G), TYPE(KC_M), TYPE(KC_A), TYPE(KC_I), TYPE(KC_L), TYPE(KC_DOT), TYPE(KC_C), TYPE(KC_O), TYPE(KC_M), END );
    case 131:
     return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_X), UP(KC_LCTL), END );
    case 138:
     return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_C), UP(KC_LCTL), END );
    case 129:
     return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_V), UP(KC_LCTL), END );
    };
    return MACRO_NONE;
}
