
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ergodox_blink_all_leds () ;
 int matrix_init_user () ;

void matrix_init_kb(void) {
  ergodox_blink_all_leds();
  matrix_init_user();
}
