
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int swapped_numbers; int raw; } ;


 int IS_LAYER_ON (int ) ;



 int _GAMEPAD ;
 int eeconfig_update_user (int ) ;
 int register_code (int const) ;
 int unregister_code (int const) ;
 TYPE_3__ userspace_config ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 130:
            if (IS_LAYER_ON(_GAMEPAD) && userspace_config.swapped_numbers) {
                if (record->event.pressed) {
                    register_code(129);
                } else {
                    unregister_code(129);
                }
                return 0;
            }
            break;
        case 129:
            if (IS_LAYER_ON(_GAMEPAD) && userspace_config.swapped_numbers) {
                if (record->event.pressed) {
                    register_code(130);
                } else {
                    unregister_code(130);
                }
                return 0;
            }
            break;
        case 128:
            if (record->event.pressed) {
                userspace_config.swapped_numbers ^= 1;
                eeconfig_update_user(userspace_config.raw);
            }
            break;
    }
    return 1;
}
