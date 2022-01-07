
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned long matrix_row_t ;


 int MATRIX_COLS ;
 scalar_t__ expander_get_col (int) ;
 int expander_read_cols () ;

matrix_row_t expander_read_row(void)
{
  expander_read_cols();


  matrix_row_t cols = 0;
  for (uint8_t col = 0; col < MATRIX_COLS; col++) {
    if (expander_get_col(col)) {
      cols |= (1UL << (MATRIX_COLS - 1 - col));
    }
  }

  return cols;
}
