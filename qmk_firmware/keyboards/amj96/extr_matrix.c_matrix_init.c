
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DDRD ;
 size_t MATRIX_ROWS ;
 int PD7 ;
 int PORTD ;
 int _BV (int ) ;
 int init_cols () ;
 int init_rows () ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int uart_rgb_init () ;

void matrix_init(void)
{






    DDRD |= _BV(PD7);
    PORTD |= _BV(PD7);


    init_rows();
    init_cols();


    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }
}
