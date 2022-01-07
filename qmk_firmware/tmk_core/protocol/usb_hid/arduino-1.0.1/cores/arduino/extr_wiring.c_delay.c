
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ micros () ;

void delay(unsigned long ms)
{
 uint16_t start = (uint16_t)micros();

 while (ms > 0) {
  if (((uint16_t)micros() - start) >= 1000) {
   ms--;
   start += 1000;
  }
 }
}
