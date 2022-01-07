
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edvorakjp_status_init () ;
 int matrix_init_keymap () ;

void matrix_init_user(void) {
  edvorakjp_status_init();
  matrix_init_keymap();
}
