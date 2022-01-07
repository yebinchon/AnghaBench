
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


 int KC_C ;

 int KC_V ;
 int LCTL (int ) ;
 int TAPPING_TERM ;
 int copy_paste_timer ;
 int tap_code16 (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 128:
            if (record->event.pressed) {
                copy_paste_timer = timer_read();
            } else {
                if (timer_elapsed(copy_paste_timer) > TAPPING_TERM) {
                    tap_code16(LCTL(KC_C));
                } else {
                    tap_code16(LCTL(KC_V));
                }
            }
            break;
    }
    return 1;
}
