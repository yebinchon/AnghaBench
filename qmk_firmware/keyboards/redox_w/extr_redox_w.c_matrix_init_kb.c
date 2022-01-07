
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_init () ;
 int matrix_init_user () ;
 int uart_init () ;

void matrix_init_kb(void) {


 matrix_init_user();
 uart_init();
 led_init();
}
