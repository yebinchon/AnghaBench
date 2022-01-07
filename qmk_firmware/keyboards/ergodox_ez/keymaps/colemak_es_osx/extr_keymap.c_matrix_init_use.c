
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_1_off () ;
 int led_2_off () ;
 int led_3_off () ;

void matrix_init_use(void) {
    led_1_off();
    led_2_off();
    led_3_off();
}
