
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ LOW ;
 scalar_t__ NOT_A_PIN ;
 scalar_t__ NOT_ON_TIMER ;
 scalar_t__ SREG ;
 int cli () ;
 scalar_t__ digitalPinToBitMask (scalar_t__) ;
 scalar_t__ digitalPinToPort (scalar_t__) ;
 scalar_t__ digitalPinToTimer (scalar_t__) ;
 scalar_t__* portOutputRegister (scalar_t__) ;
 int turnOffPWM (scalar_t__) ;

void digitalWrite(uint8_t pin, uint8_t val)
{
 uint8_t timer = digitalPinToTimer(pin);
 uint8_t bit = digitalPinToBitMask(pin);
 uint8_t port = digitalPinToPort(pin);
 volatile uint8_t *out;

 if (port == NOT_A_PIN) return;



 if (timer != NOT_ON_TIMER) turnOffPWM(timer);

 out = portOutputRegister(port);

 uint8_t oldSREG = SREG;
 cli();

 if (val == LOW) {
  *out &= ~bit;
 } else {
  *out |= bit;
 }

 SREG = oldSREG;
}
