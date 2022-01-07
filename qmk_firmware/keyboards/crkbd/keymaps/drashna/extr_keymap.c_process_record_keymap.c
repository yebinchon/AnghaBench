
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ RESET ;
 int add_keylog (scalar_t__) ;
 int is_master ;
 int oled_timer ;
 int timer_read32 () ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
    if (record->event.pressed) {





        if (keycode == RESET && !is_master) {
            return 0;
        }

    }
    return 1;
}
