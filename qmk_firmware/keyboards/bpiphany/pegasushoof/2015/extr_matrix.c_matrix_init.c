
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DDRB ;
 int DDRC ;
 int DDRD ;
 int PORTB ;
 int PORTC ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_init_quantum () ;
 size_t matrix_rows () ;

void matrix_init(void)
{

  DDRD |= 0b01111011;

  DDRC &= ~0b10000000;
  DDRB &= ~0b01111111;
  PORTC |= 0b10000000;
  PORTB |= 0b01111111;

  for (uint8_t i=0; i < matrix_rows(); i++) {
    matrix[i] = 0;
    matrix_debouncing[i] = 0;
  }

  matrix_init_quantum();
}
