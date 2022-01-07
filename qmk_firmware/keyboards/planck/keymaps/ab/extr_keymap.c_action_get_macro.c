
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


 int A ;
 int C ;
 int E ;
 int END ;
 int ENT ;
 int KC_RSFT ;
 int L ;
 int M ;
 int const* MACRODOWN (int ,int ,int ,int ,int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int MINS ;
 int S ;
 int SPC ;
 int T (int) ;



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
    case 133:
 if (record->event.pressed) {
     register_code(KC_RSFT);



 } else {
     unregister_code(KC_RSFT);
 }
 break;
    case 129:
 return MACRODOWN(T(1), T(2), T(3), T(MINS),
    T(1), T(2), T(3), T(MINS),
    T(1), T(2), T(3), T(4),
    END);
    case 132:
 return MACRODOWN(T(E), T(M), T(A), T(C), T(S), T(SPC), END);
    case 131:
 return MACRODOWN(T(L), T(S), T(SPC), T(MINS), T(L), T(ENT), END);
    };
    return MACRO_NONE;
}
