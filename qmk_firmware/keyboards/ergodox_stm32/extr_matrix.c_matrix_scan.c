
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS_PER_SIDE ;
 int debounce_read_cols (size_t) ;
 int ergodox_blink_all_leds () ;
 scalar_t__ init_mcp23017 () ;
 int * matrix ;
 int matrix_scan_quantum () ;
 scalar_t__ mcp23017_reset_loop ;
 scalar_t__ mcp23017_status ;
 int select_row (size_t) ;
 int unselect_rows () ;

uint8_t matrix_scan(void) {
  if (mcp23017_status) {
    if (++mcp23017_reset_loop == 0) {
      mcp23017_status = init_mcp23017();
        if (!mcp23017_status) {
            ergodox_blink_all_leds();
        }
    }
  }
  for (uint8_t i = 0; i < MATRIX_ROWS_PER_SIDE; i++) {
    select_row(i);
    select_row(i + MATRIX_ROWS_PER_SIDE);

    matrix[i] = debounce_read_cols(i);
    matrix[i + MATRIX_ROWS_PER_SIDE] = debounce_read_cols(i + MATRIX_ROWS_PER_SIDE);

    unselect_rows();
  }
  matrix_scan_quantum();
  return 0;
}
