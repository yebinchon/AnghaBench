
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int LAPO_KEYS ;
 int LCPO_KEYS ;
 int LSPO_KEYS ;
 int RAPC_KEYS ;
 int RCPC_KEYS ;
 int RSPC_KEYS ;
 int SFTENT_KEYS ;
 int perform_space_cadet (TYPE_2__*,int ) ;
 int sc_last ;

bool process_space_cadet(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 132: {
            perform_space_cadet(record, LSPO_KEYS);
            return 0;
        }
        case 129: {
            perform_space_cadet(record, RSPC_KEYS);
            return 0;
        }
        case 133: {
            perform_space_cadet(record, LCPO_KEYS);
            return 0;
        }
        case 130: {
            perform_space_cadet(record, RCPC_KEYS);
            return 0;
        }
        case 134: {
            perform_space_cadet(record, LAPO_KEYS);
            return 0;
        }
        case 131: {
            perform_space_cadet(record, RAPC_KEYS);
            return 0;
        }
        case 128: {
            perform_space_cadet(record, SFTENT_KEYS);
            return 0;
        }
        default: {
            if (record->event.pressed) {
                sc_last = 0;
            }
            break;
        }
    }
    return 1;
}
