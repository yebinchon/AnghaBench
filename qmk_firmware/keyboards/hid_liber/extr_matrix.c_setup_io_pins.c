
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DDRB ;
 size_t MATRIX_ROWS ;
 int PORTB ;
 int * row_bit ;
 int ** row_ddr ;
 int ** row_port ;

__attribute__((used)) static
void setup_io_pins(void) {
  uint8_t row;
  DDRB |= 0x0E;
  PORTB &= ~0x0E;
  for(row = 0; row < MATRIX_ROWS; row++) {
    *row_ddr[row] &= ~row_bit[row];
    *row_port[row] &= ~row_bit[row];
  }
}
