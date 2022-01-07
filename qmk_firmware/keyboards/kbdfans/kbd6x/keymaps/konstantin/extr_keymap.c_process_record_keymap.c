
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_RCTRL ;
 int L_RCTRL ;

 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    case 128:
        if (record->event.pressed) {
            register_code(KC_RCTRL);
            layer_on(L_RCTRL);
        } else {
            unregister_code(KC_RCTRL);
            layer_off(L_RCTRL);
        }
        break;
    }

    return 1;
}
