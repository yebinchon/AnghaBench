
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ micros () ;
 int yield () ;

void delay(uint32_t ms)
{
 uint32_t start = micros();

 if (ms > 0) {
  while (1) {
   if ((micros() - start) >= 1000) {
    ms--;
    if (ms == 0) return;
    start += 1000;
   }
   yield();
  }
 }
}
