
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 int TX_RX_LED_INIT ;
 int debug_enable ;
 int debug_matrix ;
 int debug_mouse ;
 int init_cols () ;
 int init_rows () ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_init_quantum () ;
 int unselect_cols () ;
 int unselect_rows () ;

void matrix_init(void)
{
    debug_enable = 1;
    debug_matrix = 1;
    debug_mouse = 1;


    unselect_rows();
    init_cols();





    TX_RX_LED_INIT;


    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }

    matrix_init_quantum();

}
