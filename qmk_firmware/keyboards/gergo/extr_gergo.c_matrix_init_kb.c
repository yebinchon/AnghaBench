
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int DDRD ;
 int DDRE ;
 int PORTC ;
 int PORTD ;
 int PORTE ;
 int matrix_init_user () ;

void matrix_init_kb(void) {






    DDRC &= ~(1<<7);
    DDRD &= ~(1<<5 | 1<<4 | 1<<6 | 1<<7);
    DDRE &= ~(1<<6);
    PORTC |= (1<<7);
    PORTD |= (1<<5 | 1<<4 | 1<<6 | 1<<7);
    PORTE |= (1<<6);

    matrix_init_user();
}
