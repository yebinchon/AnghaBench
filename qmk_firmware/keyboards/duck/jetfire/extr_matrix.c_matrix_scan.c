
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ matrix_row_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ MATRIX_COLS ;
 scalar_t__ MATRIX_ROWS ;
 int _delay_ms (int) ;
 int _delay_us (int) ;
 scalar_t__ debouncing ;
 int dprint (char*) ;
 int dprintf (char*,scalar_t__) ;
 int dprintln () ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 scalar_t__ read_rows (scalar_t__) ;
 int select_col (scalar_t__) ;
 int unselect_cols () ;

uint8_t matrix_scan(void)
{
    for (uint8_t col = 0; col < MATRIX_COLS; col++) {
        select_col(col);
        _delay_us(3);
        uint8_t rows = read_rows(col);
        for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
            bool prev_bit = matrix_debouncing[row] & ((matrix_row_t)1<<col);
            bool curr_bit = rows & (1<<row);
            if (prev_bit != curr_bit) {
                matrix_debouncing[row] ^= ((matrix_row_t)1<<col);
                if (debouncing) {
                    dprint("bounce!: "); dprintf("%02X", debouncing); dprintln();
                }
                debouncing = DEBOUNCE;
            }
        }
        unselect_cols();
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

    return 1;
}
