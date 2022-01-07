
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ matrix_row_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ ROWS_PER_HAND ;
 int _delay_ms (int) ;
 int _delay_us (int) ;
 scalar_t__ debouncing ;
 scalar_t__ isLeftHand ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 scalar_t__ read_cols () ;
 int select_row (scalar_t__) ;
 int unselect_rows () ;

uint8_t _matrix_scan(void) {

  int offset = isLeftHand ? 0 : (ROWS_PER_HAND);

  for (uint8_t i = 0; i < ROWS_PER_HAND; i++) {
      select_row(i);
      _delay_us(30);
      matrix_row_t cols = read_cols();
      if (matrix_debouncing[i+offset] != cols) {
          matrix_debouncing[i+offset] = cols;
          debouncing = DEBOUNCE;
      }
      unselect_rows();
  }

  if (debouncing) {
      if (--debouncing) {
          _delay_ms(1);
      } else {
          for (uint8_t i = 0; i < ROWS_PER_HAND; i++) {
              matrix[i+offset] = matrix_debouncing[i+offset];
          }
      }
  }

  return 1;
}
