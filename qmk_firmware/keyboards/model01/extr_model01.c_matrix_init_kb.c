
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int matrix_init_user () ;
 int set_all_leds_to (int ,int ,int ) ;

void matrix_init_kb(void) {

  set_all_leds_to(0, 0, 0);
  matrix_init_user();
}
