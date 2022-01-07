
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DIRECT_MODE_INPUT (int ) ;
 int interrupts () ;
 int noInterrupts () ;

void onewire_depower(uint8_t pin)
{
 noInterrupts();
 DIRECT_MODE_INPUT(pin);
 interrupts();
}
