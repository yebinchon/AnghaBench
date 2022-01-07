
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
struct TYPE_7__ {int layer_rgb; int raw; } ;
 int eeconfig_update_user (int ) ;
 int layer_state ;
 int layer_state_set (int ) ;
 TYPE_3__ user_config ;

bool process_record_user (uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 134:
            if(record->event.pressed) {
                user_config.layer_rgb ^= 1;
                eeconfig_update_user(user_config.raw);
                if (user_config.layer_rgb) {
                    layer_state_set(layer_state);
                }
            }
            return 0;
            break;
        case 132:
        case 131:
        case 130:
        case 133:
        case 129:
        case 128:
            if(user_config.layer_rgb && record->event.pressed) {
                return 0;
            }
            break;
    }
    return 1;
}
