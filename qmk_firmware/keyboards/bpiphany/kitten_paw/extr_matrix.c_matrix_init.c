
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DDRB ;
 int DDRC ;
 int DDRD ;
 size_t MATRIX_ROWS ;
 int PORTC ;
 int PORTD ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_init_quantum () ;

void matrix_init(void) {
  DDRC &= ~0b10000100;
  DDRD &= ~0b01111110;
  PORTC |= 0b10000100;
  PORTD |= 0b01111110;

  DDRB |= 0b01111111;

  for (uint8_t i=0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
    matrix_debouncing[i] = 0;
  }
  matrix_init_quantum();
}
