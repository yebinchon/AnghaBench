
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned long clockCyclesToMicroseconds (unsigned long) ;
 int digitalPinToBitMask (int) ;
 int digitalPinToPort (int) ;
 int microsecondsToClockCycles (unsigned long) ;
 int* portInputRegister (int) ;

unsigned long pulseIn(uint8_t pin, uint8_t state, unsigned long timeout)
{



 uint8_t bit = digitalPinToBitMask(pin);
 uint8_t port = digitalPinToPort(pin);
 uint8_t stateMask = (state ? bit : 0);
 unsigned long width = 0;



 unsigned long numloops = 0;
 unsigned long maxloops = microsecondsToClockCycles(timeout) / 16;


 while ((*portInputRegister(port) & bit) == stateMask)
  if (numloops++ == maxloops)
   return 0;


 while ((*portInputRegister(port) & bit) != stateMask)
  if (numloops++ == maxloops)
   return 0;


 while ((*portInputRegister(port) & bit) == stateMask) {
  if (numloops++ == maxloops)
   return 0;
  width++;
 }





 return clockCyclesToMicroseconds(width * 21 + 16);
}
