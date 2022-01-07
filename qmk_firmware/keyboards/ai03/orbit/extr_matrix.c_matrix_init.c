
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MATRIX_COLS ;
 int* MATRIX_COL_PINS_RIGHT ;
 int MATRIX_ROWS ;
 int* MATRIX_ROW_PINS_RIGHT ;
 scalar_t__ ROWS_PER_HAND ;
 int* col_pins ;
 int debounce_init (scalar_t__) ;
 int debug_enable ;
 int debug_matrix ;
 int debug_mouse ;
 int init_pins () ;
 scalar_t__ isLeftHand ;
 scalar_t__* matrix ;
 int matrix_init_quantum () ;
 int* row_pins ;
 scalar_t__ thatHand ;
 scalar_t__ thisHand ;

void matrix_init(void) {
  debug_enable = 1;
  debug_matrix = 1;
  debug_mouse = 1;


  if (!isLeftHand) {
  }

  thisHand = isLeftHand ? 0 : (ROWS_PER_HAND);
  thatHand = ROWS_PER_HAND - thisHand;


  init_pins();


  for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
  }

  debounce_init(ROWS_PER_HAND);

  matrix_init_quantum();
}
