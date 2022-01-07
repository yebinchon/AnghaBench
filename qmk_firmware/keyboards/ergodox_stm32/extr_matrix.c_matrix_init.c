
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_COLS ;
 size_t MATRIX_ROWS ;
 scalar_t__* debounce_matrix ;
 int init_cols () ;
 int init_mcp23017 () ;
 int init_rows () ;
 scalar_t__* matrix ;
 int matrix_init_quantum () ;
 int mcp23017_reset_loop ;
 int mcp23017_status ;
 scalar_t__* raw_matrix ;
 int unselect_rows () ;

void matrix_init(void) {
  mcp23017_status = init_mcp23017();
  (void) mcp23017_reset_loop;
  init_rows();
  unselect_rows();
  init_cols();


  for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
    raw_matrix[i] = 0;
    for (uint8_t j = 0; j < MATRIX_COLS; ++j) {
      debounce_matrix[i * MATRIX_COLS + j] = 0;
    }
  }
  matrix_init_quantum();
}
