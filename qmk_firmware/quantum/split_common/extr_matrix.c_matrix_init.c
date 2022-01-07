
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int pin_t ;


 int ** DIRECT_PINS_RIGHT ;
 int MATRIX_COLS ;
 int * MATRIX_COL_PINS_RIGHT ;
 int MATRIX_ROWS ;
 int * MATRIX_ROW_PINS_RIGHT ;
 scalar_t__ ROWS_PER_HAND ;
 int * col_pins ;
 int debounce_init (scalar_t__) ;
 int ** direct_pins ;
 int init_pins () ;
 scalar_t__ isLeftHand ;
 int keyboard_split_setup () ;
 scalar_t__* matrix ;
 int matrix_init_quantum () ;
 int * row_pins ;
 scalar_t__ thatHand ;
 scalar_t__ thisHand ;

void matrix_init(void) {
    keyboard_split_setup();


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
