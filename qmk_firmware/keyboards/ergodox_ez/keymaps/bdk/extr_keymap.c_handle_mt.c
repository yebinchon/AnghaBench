
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct tap_start_info {scalar_t__ initial_press_counter; int timer; } ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ ONESHOT_TIMEOUT ;
 scalar_t__ press_counter ;
 int register_code16 (int ) ;
 int register_mods (int) ;
 struct tap_start_info* tap_start_infos ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code16 (int ) ;
 int unregister_mods (int) ;

__attribute__((used)) static bool handle_mt(uint16_t keycode, keyrecord_t *record, uint8_t mods, uint8_t index) {
    struct tap_start_info* tap_start = tap_start_infos + index;

    if(record->event.pressed) {
        register_mods(mods);
        tap_start->timer = timer_read();
        tap_start->initial_press_counter = press_counter;
    } else {
        unregister_mods(mods);



        if(press_counter == tap_start->initial_press_counter && timer_elapsed(tap_start->timer) < ONESHOT_TIMEOUT) {
            register_code16(keycode);
            unregister_code16(keycode);
        }
    }
    return 0;
}
