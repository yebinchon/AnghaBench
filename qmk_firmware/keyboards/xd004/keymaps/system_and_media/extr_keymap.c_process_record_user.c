
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


 int KC_ENTER ;
 int KC_F4 ;
 int LALT (int ) ;

 int alt_f4_timer ;
 int is_alt_f4_active ;
 int tap_code (int ) ;
 int tap_code16 (int ) ;
 int timer_read () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 128:
            if (record->event.pressed) {
                if (!is_alt_f4_active) {
                    is_alt_f4_active = 1;
                    tap_code16(LALT(KC_F4));
                } else {
                    tap_code(KC_ENTER);
                }
            }
            alt_f4_timer = timer_read();
            break;
    }
    return 1;
}
