
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ergodox_board_led_off () ;

void matrix_init_user (void) {
 ergodox_board_led_off();
}
