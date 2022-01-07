
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int NOT_ON_TIMER ;

__attribute__((used)) static inline uint8_t digitalPinToTimer(uint8_t pin)
{
 if (pin >= 3 && pin <= 6) return pin - 2;
 if (pin >= 9 && pin <= 10) return pin - 4;
 if (pin >= 20 && pin <= 23) return pin - 13;
 return NOT_ON_TIMER;
}
