
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_init_ports () ;
 int led_set_layer (int) ;

void matrix_init_user(void) {
 led_init_ports();

 led_set_layer(1);


}
