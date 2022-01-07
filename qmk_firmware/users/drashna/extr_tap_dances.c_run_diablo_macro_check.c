
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {int key_interval; int keycode; int timer; } ;


 scalar_t__ IS_LAYER_ON (int ) ;
 size_t NUM_OF_DIABLO_KEYS ;
 int _DIABLO ;
 TYPE_1__* diablo_timer ;
 int tap_code (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;

void run_diablo_macro_check(void) {
    for (uint8_t index = 0; index < NUM_OF_DIABLO_KEYS; index++) {

        if (diablo_timer[index].key_interval && timer_elapsed(diablo_timer[index].timer) > (diablo_timer[index].key_interval * 1000)) {

            diablo_timer[index].timer = timer_read();

            if (IS_LAYER_ON(_DIABLO)) {
                tap_code(diablo_timer[index].keycode);
            }
        }
    }
}
