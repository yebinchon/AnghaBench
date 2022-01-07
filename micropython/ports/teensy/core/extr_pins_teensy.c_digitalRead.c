
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ CORE_NUM_DIGITAL ;
 scalar_t__* portInputRegister (scalar_t__) ;

uint8_t digitalRead(uint8_t pin)
{
 if (pin >= CORE_NUM_DIGITAL) return 0;
 return *portInputRegister(pin);
}
