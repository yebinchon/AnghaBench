
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 int has_usb () ;
 int init_cols () ;
 int is_master ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_init_quantum () ;
 int split_keyboard_setup () ;
 int tx_rx_leds_init () ;
 int unselect_rows () ;

void matrix_init(void)
{
    split_keyboard_setup();


    unselect_rows();
    init_cols();

    tx_rx_leds_init();


    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }

    is_master = has_usb();

    matrix_init_quantum();
}
