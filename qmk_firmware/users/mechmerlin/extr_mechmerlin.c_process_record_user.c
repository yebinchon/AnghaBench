
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



 int _AL ;
 int _FL ;
 int layer_invert (int ) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int timer_elapsed (int) ;
 int timer_read () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    static uint16_t fnx_layer_timer;

    switch (keycode){
        case 128:
            if(record->event.pressed){
                fnx_layer_timer = timer_read();
                layer_on(_FL);
            } else {
                layer_off(_FL);
                if (timer_elapsed(fnx_layer_timer) < 150) {
                    layer_invert(_AL);
                }
            }
        return 0;
    }
    return 1;
}
