
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 scalar_t__ CORE_NUM_DIGITAL ;
 int portInputRegister (scalar_t__) ;
 int pulseIn_high (int ,int ) ;
 int pulseIn_low (int ,int ) ;

uint32_t pulseIn(uint8_t pin, uint8_t state, uint32_t timeout)
{
 if (pin >= CORE_NUM_DIGITAL) return 0;
 if (state) return pulseIn_high(portInputRegister(pin), timeout);
 return pulseIn_low(portInputRegister(pin), timeout);;
}
