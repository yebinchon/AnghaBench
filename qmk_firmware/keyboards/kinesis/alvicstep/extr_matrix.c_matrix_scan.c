
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ MATRIX_ROWS ;
 int _delay_ms (int) ;
 scalar_t__ debouncing ;
 int debug (char*) ;
 int debug_hex (scalar_t__) ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_scan_quantum () ;
 scalar_t__ read_row (scalar_t__) ;
 int select_rows (scalar_t__) ;
 int unselect_rows () ;

uint8_t matrix_scan(void)
{

    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        select_rows(i);
        uint8_t row = read_row(i);
        if (matrix_debouncing[i] != row) {
            matrix_debouncing[i] = row;
            if (debouncing) {
                debug("bounce!: "); debug_hex(debouncing); debug("\n");
            }
            debouncing = DEBOUNCE;
        }
        unselect_rows();
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
    matrix_scan_quantum();
    return 1;
}
