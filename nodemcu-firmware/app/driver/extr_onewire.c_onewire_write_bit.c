
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DIRECT_MODE_INPUT (int) ;
 int DIRECT_WRITE_HIGH (int) ;
 int DIRECT_WRITE_LOW (int) ;
 int delayMicroseconds (int) ;
 int interrupts () ;
 int noInterrupts () ;

__attribute__((used)) static void onewire_write_bit(uint8_t pin, uint8_t v, uint8_t power)
{
 if (v & 1) {
  noInterrupts();
  DIRECT_WRITE_LOW(pin);
  delayMicroseconds(5);
  if (power) {
   DIRECT_WRITE_HIGH(pin);
  } else {
   DIRECT_MODE_INPUT(pin);
  }
  delayMicroseconds(8);
  interrupts();
  delayMicroseconds(52);
 } else {
  noInterrupts();
  DIRECT_WRITE_LOW(pin);
  delayMicroseconds(65);
  if (power) {
   DIRECT_WRITE_HIGH(pin);
  } else {
   DIRECT_MODE_INPUT(pin);
  }
  interrupts();
  delayMicroseconds(5);
 }
}
