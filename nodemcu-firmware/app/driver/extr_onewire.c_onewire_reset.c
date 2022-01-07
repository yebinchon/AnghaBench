
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int DIRECT_MODE_INPUT (scalar_t__) ;
 int DIRECT_READ (scalar_t__) ;
 int DIRECT_WRITE_LOW (scalar_t__) ;
 int delayMicroseconds (int) ;
 int interrupts () ;
 int noInterrupts () ;

uint8_t onewire_reset(uint8_t pin)
{
 uint8_t r;
 uint8_t retries = 125;

 noInterrupts();
 DIRECT_MODE_INPUT(pin);
 interrupts();

 do {
  if (--retries == 0) return 0;
  delayMicroseconds(2);
 } while ( !DIRECT_READ(pin));

 noInterrupts();
 DIRECT_WRITE_LOW(pin);
 interrupts();
 delayMicroseconds(480);
 noInterrupts();
 DIRECT_MODE_INPUT(pin);
 delayMicroseconds(70);
 r = !DIRECT_READ(pin);
 interrupts();
 delayMicroseconds(410);
 return r;
}
