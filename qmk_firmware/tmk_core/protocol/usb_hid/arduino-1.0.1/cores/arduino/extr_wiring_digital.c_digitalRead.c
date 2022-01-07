
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int HIGH ;
 int LOW ;
 scalar_t__ NOT_A_PIN ;
 scalar_t__ NOT_ON_TIMER ;
 scalar_t__ digitalPinToBitMask (scalar_t__) ;
 scalar_t__ digitalPinToPort (scalar_t__) ;
 scalar_t__ digitalPinToTimer (scalar_t__) ;
 scalar_t__* portInputRegister (scalar_t__) ;
 int turnOffPWM (scalar_t__) ;

int digitalRead(uint8_t pin)
{
 uint8_t timer = digitalPinToTimer(pin);
 uint8_t bit = digitalPinToBitMask(pin);
 uint8_t port = digitalPinToPort(pin);

 if (port == NOT_A_PIN) return LOW;



 if (timer != NOT_ON_TIMER) turnOffPWM(timer);

 if (*portInputRegister(port) & bit) return HIGH;
 return LOW;
}
