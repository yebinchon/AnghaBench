
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






 int _M_COLEMAK ;
 int _M_QWERTY ;
 int _W_COLEMAK ;
 int _W_QWERTY ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 130:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_M_QWERTY);
            }
            return 0;
            break;
        case 131:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_M_COLEMAK);
            }
            return 0;
            break;
        case 128:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_W_QWERTY);
            }
            return 0;
            break;
        case 129:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_W_COLEMAK);
            }
            return 0;
            break;
    }
    return 1;
}
