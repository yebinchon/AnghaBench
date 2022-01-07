
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int matrix_init_user () ;

void matrix_init_kb(void) {



    DDRC |= (1<<4);
    PORTC &= ~(1<<4);


    DDRC |= (1<<6);
    PORTC &= ~(1<<6);

    DDRB |= (1<<6);
    PORTB &= ~(1<<6);

    DDRB |= (1<<4);
    PORTB &= ~(1<<4);

    DDRD |= (1<<5);
    PORTD &= ~(1<<5);

    DDRD |= (1<<2);
    PORTD &= ~(1<<2);

    DDRD |= (1<<3);
    PORTD &= ~(1<<3);

    matrix_init_user();
}
