
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ matrix_row_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ MATRIX_ROWS ;
 int PINA ;
 int PINC ;
 int PIND ;
 int PIND7 ;
 int _delay_ms (int) ;
 int _delay_us (int) ;
 int bit_reverse (int) ;
 scalar_t__ debouncing ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_scan_kb () ;
 int matrix_set_row_status (scalar_t__) ;

uint8_t matrix_scan(void) {
    for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
        matrix_set_row_status(row);
        _delay_us(5);

        matrix_row_t cols = (

            (~PINA) & 0xFF
        ) | (

            bit_reverse((~PINC) & 0xFF) << 8
        ) | (

            ((~PIND) & (1 << PIND7)) << 7
        );

        if (matrix_debouncing[row] != cols) {
            matrix_debouncing[row] = cols;
            debouncing = DEBOUNCE;
        }
    }

    if (debouncing) {
        if (--debouncing) {
            _delay_ms(1);
        } else {
            for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
                matrix[i] = matrix_debouncing[i];
            }
        }
    }

    matrix_scan_kb();

    return 1;
}
