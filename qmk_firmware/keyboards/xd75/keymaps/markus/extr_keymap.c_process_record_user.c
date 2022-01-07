
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





 int UC_LNX ;
 int UC_OSX ;
 int UC_WINC ;



 int _GAM ;
 int _QWY ;
 int _QWZ ;
 int set_single_persistent_default_layer (int ) ;
 int set_unicode_input_mode (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch(keycode) {
        case 131:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_QWZ);
            }
            return 0;
            break;
        case 132:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_QWY);
            }
            return 0;
            break;
        case 133:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_GAM);
            }
            return 0;
            break;
        case 130:
            set_unicode_input_mode(UC_LNX);
            return 0;
            break;
        case 128:
            set_unicode_input_mode(UC_WINC);
            return 0;
            break;
        case 129:
            set_unicode_input_mode(UC_OSX);
            return 0;
            break;
    }
    return 1;
}
