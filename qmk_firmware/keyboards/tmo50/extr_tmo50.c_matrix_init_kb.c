
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PB0 ;
 int PB1 ;
 int PB2 ;
 int PB3 ;
 int PORTB ;
 int matrix_init_user () ;

void matrix_init_kb(void) {



  DDRB |= (1 << PB0);
  PORTB &= ~(1 << PB0);
  DDRB |= (1 << PB1);
  PORTB |= (1<<PB1);
  DDRB |= (1 << PB2);
  PORTB |= (1<<PB2);
  DDRB |= (1 << PB3);
  PORTB |= (1<<PB3);

 matrix_init_user();
}
