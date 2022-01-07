
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


 scalar_t__ TAPPING_TERM ;
 int register_code (int ) ;
 int send_string (char*) ;
 int sunds_timer ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code (int ) ;

void mod_or_mod_with_macro(keyrecord_t *record, uint16_t kc_mod, char* macro) {
    if (record->event.pressed) {
        sunds_timer = timer_read();
        register_code(kc_mod);
    } else {
        if (timer_elapsed(sunds_timer) < TAPPING_TERM) {
            send_string(macro);
        }
        unregister_code(kc_mod);
    }
}
