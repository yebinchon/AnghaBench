
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int B4 ;
 size_t MATRIX_ROWS ;
 int init_cols () ;
 int init_rows () ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_init_quantum () ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

void matrix_init(void)
{


  setPinOutput(B4);
  writePinLow(B4);

  init_cols();
  init_rows();

  for (uint8_t i=0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
    matrix_debouncing[i] = 0;
  }

  matrix_init_quantum();
}
