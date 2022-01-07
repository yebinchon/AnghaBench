
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 int init_cols () ;
 scalar_t__* matrix ;
 int unselect_rows () ;

void matrix_power_up(void) {
  unselect_rows();
  init_cols();


  for (uint8_t i=0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
  }
}
