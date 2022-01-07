
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int _CM ;
 int _DV ;
 int _QW ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    if (record->event.pressed) {
        switch (keycode) {
            case 129:
                set_single_persistent_default_layer(_DV);
                return 0;
            case 128:
                set_single_persistent_default_layer(_QW);
                return 0;
            case 130:
                set_single_persistent_default_layer(_CM);
                return 0;
        }
    }
    return 1;
}
