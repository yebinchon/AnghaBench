
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int LED_OFF () ;
 int LED_ON () ;
 size_t MATRIX_ROWS ;
 int debug_matrix ;
 int init_cols () ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_init_quantum () ;
 int unselect_rows () ;
 int wait_ms (int) ;

void matrix_init(void)
{

  unselect_rows();
  init_cols();

  for (uint8_t i=0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
    matrix_debouncing[i] = 0;
  }

  debug_matrix = 1;
  LED_ON();
  wait_ms(500);
  LED_OFF();

  matrix_init_quantum();
}
