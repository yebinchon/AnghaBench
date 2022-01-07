
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;


 int __disable_irq () ;
 int __enable_irq () ;
 int ** intFunc ;
 int* portConfigRegister (size_t) ;

void detachInterrupt(uint8_t pin)
{
 volatile uint32_t *config;

 config = portConfigRegister(pin);
 __disable_irq();
 *config = ((*config & ~0x000F0000) | 0x01000000);
 intFunc[pin] = ((void*)0);
 __enable_irq();
}
