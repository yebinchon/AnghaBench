
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_layer_led_set () ;

void matrix_init_user(void) {
    default_layer_led_set();
}
