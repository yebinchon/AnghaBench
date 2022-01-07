
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int matrix_row_t ;


 scalar_t__ MATRIX_ROWS ;
 int debounce_mask (scalar_t__) ;
 int debounce_report (int,scalar_t__) ;
 int expander_scan () ;
 int* matrix ;
 int matrix_scan_quantum () ;
 int read_cols (scalar_t__) ;
 int select_row (scalar_t__) ;
 int unselect_rows () ;
 int wait_us (int) ;

uint8_t matrix_scan(void)
{
  expander_scan();

  for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
    select_row(i);
    wait_us(30);
    matrix_row_t mask = debounce_mask(i);
    matrix_row_t cols = (read_cols(i) & mask) | (matrix[i] & ~mask);
    debounce_report(cols ^ matrix[i], i);
    matrix[i] = cols;

    unselect_rows();
  }

  matrix_scan_quantum();

  return 1;
}
