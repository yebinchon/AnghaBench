
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HIGH ;
 int LOW ;
 int LSBFIRST ;
 int digitalRead (int) ;
 int digitalWrite (int,int ) ;

uint8_t shiftIn(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder) {
 uint8_t value = 0;
 uint8_t i;

 for (i = 0; i < 8; ++i) {
  digitalWrite(clockPin, HIGH);
  if (bitOrder == LSBFIRST)
   value |= digitalRead(dataPin) << i;
  else
   value |= digitalRead(dataPin) << (7 - i);
  digitalWrite(clockPin, LOW);
 }
 return value;
}
