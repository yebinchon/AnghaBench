
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HIGH ;
 int LOW ;
 int LSBFIRST ;
 int digitalWrite (int,int) ;

void shiftOut(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder, uint8_t val)
{
 uint8_t i;

 for (i = 0; i < 8; i++) {
  if (bitOrder == LSBFIRST)
   digitalWrite(dataPin, !!(val & (1 << i)));
  else
   digitalWrite(dataPin, !!(val & (1 << (7 - i))));

  digitalWrite(clockPin, HIGH);
  digitalWrite(clockPin, LOW);
 }
}
