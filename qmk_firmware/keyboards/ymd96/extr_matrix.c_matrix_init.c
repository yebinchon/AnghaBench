
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DDRA ;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 size_t MATRIX_ROWS ;
 int PIND7 ;
 int PORTA ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int* matrix ;
 int* matrix_debouncing ;
 int matrix_init_quantum () ;

void matrix_init(void) {

    DDRB = 0xFF;
    PORTB = 0xFF;

    DDRA = 0x00;
    DDRC &= ~(0x111111<<2);
    DDRD &= ~(1<<PIND7);

    PORTA = 0xFF;
    PORTC |= (0b111111<<2);
    PORTD |= (1<<PIND7);


    for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
        matrix[row] = 0x00;
        matrix_debouncing[row] = 0x00;
    }

    matrix_init_quantum();
}
