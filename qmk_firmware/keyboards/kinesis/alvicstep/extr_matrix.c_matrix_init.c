
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DDRF ;
 size_t MATRIX_ROWS ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTF ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int unselect_rows () ;

void matrix_init(void)
{




    DDRD = 0xFF;
    PORTD = 0xFF;


    DDRF = 0xFF;
    PORTF = 0x00;


    DDRB = 0x00;
    PORTB = 0xFF;


    DDRC = 0x00;
    PORTC = 0xFF;


    unselect_rows();


    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }

}
