
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 int debounce_init (size_t) ;
 int init_cols () ;
 int init_mcp23018 () ;
 scalar_t__* matrix ;
 int matrix_init_quantum () ;
 int mcp23018_status ;
 scalar_t__* raw_matrix ;
 int unselect_rows () ;

void matrix_init(void) {

    mcp23018_status = init_mcp23018();
    unselect_rows();
    init_cols();


  for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
    raw_matrix[i] = 0;
  }

    debounce_init(MATRIX_ROWS);
    matrix_init_quantum();
}
