
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int LED ;
 int Matrix_Reset () ;
 int PORTB ;
 int PORTD ;
 int RESET ;
 int SCLK ;
 int SDATA ;
 int matrix_init_quantum () ;

void matrix_init () {


    DDRB |= RESET | SCLK ;

    DDRB &= ~SDATA ;



    PORTB &= ~RESET ;
    PORTB |= SCLK ;


    DDRD |= LED ;
    PORTD &= ~LED ;

    matrix_init_quantum();


    Matrix_Reset() ;
}
