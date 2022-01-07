
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DIRECT_MODE_INPUT (int ) ;
 int DIRECT_READ (int ) ;
 int DIRECT_WRITE_LOW (int ) ;
 int delayMicroseconds (int) ;
 int interrupts () ;
 int noInterrupts () ;

__attribute__((used)) static uint8_t onewire_read_bit(uint8_t pin)
{
 uint8_t r;

 noInterrupts();
 DIRECT_WRITE_LOW(pin);

 delayMicroseconds(5);
 DIRECT_MODE_INPUT(pin);
 delayMicroseconds(8);
 r = DIRECT_READ(pin);
 interrupts();
 delayMicroseconds(52);
 return r;
}
