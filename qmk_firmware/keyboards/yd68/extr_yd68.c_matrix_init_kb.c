
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int DDRE ;
 int PORTB ;
 int PORTD ;
 int PORTE ;
 int matrix_init_user () ;

void matrix_init_kb(void) {




 DDRD |= (1<<4);
    PORTD &= ~(1<<4);


 DDRD |= (1<<6);
    PORTD &= ~(1<<6);


 DDRE |= (1<<2);
    PORTE &= ~(1<<2);


 DDRB |= (1<<2);
    PORTB |= (1<<2);


 DDRB |= (1<<3);
 PORTB &= ~(1<<3);

 matrix_init_user();
}
