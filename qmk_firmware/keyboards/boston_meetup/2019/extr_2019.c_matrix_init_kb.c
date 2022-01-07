
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int matrix_init_user () ;
 int queue_for_send ;

void matrix_init_kb(void) {
  queue_for_send = 1;
 matrix_init_user();
}
