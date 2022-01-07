
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


 int F4 ;

 int writePinHigh (int ) ;
 int writePinLow (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    static bool sysreq_led = 0;
    if (record->event.pressed) {
        if (sysreq_led) {
            sysreq_led = 0;
            writePinLow(F4);
        }
        else {
            switch(keycode) {
                case 128:
                    sysreq_led = 1;
                    writePinHigh(F4);
            }
        }
    }
    return 1;
}
