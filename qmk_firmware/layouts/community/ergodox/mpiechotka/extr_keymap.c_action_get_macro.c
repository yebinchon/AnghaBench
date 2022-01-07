
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


 int END ;
 int ENT ;
 int KC_LGUI ;
 int KC_RSFT ;

 int const* MACRO (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int const* MACRO_NONE ;




 int SLCK ;
 int T (int) ;
 int W (int) ;
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
    case 132:
        if (record->event.pressed) {
             register_code(KC_RSFT);
             unregister_code(KC_RSFT);
             register_code(KC_LGUI);
        } else {
             unregister_code(KC_LGUI);
        }
        break;
    case 131:
        if (!record->event.pressed) {
             return MACRO(T(SLCK), W(50), T(SLCK), W(50), T(1), W(50), T(ENT), END);
        }
        break;
    case 130:
        if (!record->event.pressed) {
             return MACRO(T(SLCK), W(50), T(SLCK), W(50), T(2), W(50), T(ENT), END);
        }
        break;
    case 129:
        if (!record->event.pressed) {
             return MACRO(T(SLCK), W(50), T(SLCK), W(50), T(3), W(50), T(ENT), END);
        }
        break;
    case 128:
        if (!record->event.pressed) {
             return MACRO(T(SLCK), W(50), T(SLCK), W(50), T(4), W(50), T(ENT), END);
        }
        break;
    }
    return MACRO_NONE;
}
