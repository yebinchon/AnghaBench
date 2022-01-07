
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_distance_map () ;
 int init_keycode_to_led_map () ;

void matrix_init_user(void) {
    init_keycode_to_led_map();
    init_distance_map();
}
