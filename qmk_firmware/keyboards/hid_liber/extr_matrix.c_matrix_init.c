
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_init_quantum () ;
 int setup_io_pins () ;
 int setup_leds () ;

void matrix_init(void)
{

    setup_io_pins();
    setup_leds();


    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }

    matrix_init_quantum();
}
