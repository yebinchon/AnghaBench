
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ergodox_led_all_off () ;

void suspend_power_down_user(void) {
    ergodox_led_all_off();
}
