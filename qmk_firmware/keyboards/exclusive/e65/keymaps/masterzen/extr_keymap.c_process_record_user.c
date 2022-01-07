
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_9__ {int mode; } ;
struct TYPE_8__ {int mode; } ;


 int BASE ;


 int OSX ;

 TYPE_4__ rgblight_config ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;
 int set_single_persistent_default_layer (int ) ;
 TYPE_3__ temp_config ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {

        case 130:
            if (record->event.pressed) {
                set_single_persistent_default_layer(BASE);
            }
            return 0;
            break;
        case 129:
            if (record->event.pressed) {
                set_single_persistent_default_layer(OSX);
            }
            return 0;
            break;
        case 128:


            if (record->event.pressed) {
                rgblight_mode(temp_config.mode);
                rgblight_step();
                temp_config.mode = rgblight_config.mode;
            }
            return 0;
            break;
    }
    return 1;
}
