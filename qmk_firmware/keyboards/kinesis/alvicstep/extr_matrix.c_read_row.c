
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int matrix_row_t ;


 int PINB ;
 int PINC ;
 int _delay_us (int) ;

__attribute__((used)) static matrix_row_t read_row(uint8_t row)
{
 _delay_us(30);


 if (row == 12)
 {
  return ~(PINC | 0b00111111);
 }
 return ~PINB;
}
