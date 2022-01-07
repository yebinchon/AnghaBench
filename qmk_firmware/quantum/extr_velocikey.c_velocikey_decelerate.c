
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int TYPING_SPEED_MAX_VALUE ;
 int timer_elapsed (scalar_t__) ;
 scalar_t__ timer_read () ;
 int typing_speed ;

void velocikey_decelerate(void) {
    static uint16_t decay_timer = 0;

    if (timer_elapsed(decay_timer) > 500 || decay_timer == 0) {
        if (typing_speed > 0) typing_speed -= 1;

        if (typing_speed > TYPING_SPEED_MAX_VALUE / 2) typing_speed -= 1;

        if (typing_speed > TYPING_SPEED_MAX_VALUE / 4 * 3) typing_speed -= 2;
        decay_timer = timer_read();
    }
}
