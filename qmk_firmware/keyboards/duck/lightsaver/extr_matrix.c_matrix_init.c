
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DDRB ;
 int DDRD ;
 int DDRE ;
 size_t MATRIX_ROWS ;
 int PORTB ;
 int PORTD ;
 int PORTE ;
 int init_rows () ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debouncing ;
 int matrix_init_quantum () ;
 int unselect_cols () ;

void matrix_init(void) {
  DDRD |= 0b11010000;
  PORTD &= ~0b01010000;
  DDRB |= 0b00011111;
  PORTB &= ~0b00001110;
  PORTB |= 0b00010001;
  DDRE |= 0b01000000;
  PORTE &= ~0b01000000;

  unselect_cols();
  init_rows();

  for (uint8_t i=0; i < MATRIX_ROWS; i++) {
    matrix[i] = 0;
    matrix_debouncing[i] = 0;
  }

  matrix_init_quantum();
}
