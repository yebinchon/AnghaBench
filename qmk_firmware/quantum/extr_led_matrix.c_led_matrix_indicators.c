
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_matrix_indicators_kb () ;
 int led_matrix_indicators_user () ;

void led_matrix_indicators(void) {
    led_matrix_indicators_kb();
    led_matrix_indicators_user();
}
