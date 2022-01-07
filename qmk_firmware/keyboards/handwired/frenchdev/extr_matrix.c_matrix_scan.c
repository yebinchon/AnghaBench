
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ matrix_row_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ MATRIX_ROWS ;
 scalar_t__ debouncing ;
 int debug (char*) ;
 int debug_hex (scalar_t__) ;
 int frenchdev_blink_all_leds () ;
 scalar_t__ init_mcp23018 () ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_scan_quantum () ;
 scalar_t__ mcp23018_reset_loop ;
 scalar_t__ mcp23018_status ;
 int print (char*) ;
 scalar_t__ read_cols (scalar_t__) ;
 int select_row (scalar_t__) ;
 int unselect_rows () ;
 int wait_us (int) ;

uint8_t matrix_scan(void)
{
    if (mcp23018_status) {
        if (++mcp23018_reset_loop == 0) {


            print("trying to reset mcp23018\n");
            mcp23018_status = init_mcp23018();
            if (mcp23018_status) {
                print("left side not responding\n");
            } else {
                print("left side attached\n");
                frenchdev_blink_all_leds();
            }
        }
    }

    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        select_row(i);
        wait_us(30);
        matrix_row_t cols = read_cols(i);
        if (matrix_debouncing[i] != cols) {
            matrix_debouncing[i] = cols;
            if (debouncing) {
                debug("bounce!: "); debug_hex(debouncing); debug("\n");
            }
            debouncing = DEBOUNCE;
        }
        unselect_rows();
    }

    if (debouncing) {
        if (--debouncing) {
            wait_us(1);

        } else {
            for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
                matrix[i] = matrix_debouncing[i];
            }
        }
    }

    matrix_scan_quantum();

    return 1;
}
