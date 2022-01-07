
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ INPUT ;
 scalar_t__ INPUT_PULLUP ;
 scalar_t__ NOT_A_PIN ;
 scalar_t__ SREG ;
 int cli () ;
 scalar_t__ digitalPinToBitMask (scalar_t__) ;
 scalar_t__ digitalPinToPort (scalar_t__) ;
 scalar_t__* portModeRegister (scalar_t__) ;
 scalar_t__* portOutputRegister (scalar_t__) ;

void pinMode(uint8_t pin, uint8_t mode)
{
 uint8_t bit = digitalPinToBitMask(pin);
 uint8_t port = digitalPinToPort(pin);
 volatile uint8_t *reg, *out;

 if (port == NOT_A_PIN) return;


 reg = portModeRegister(port);
 out = portOutputRegister(port);

 if (mode == INPUT) {
  uint8_t oldSREG = SREG;
                cli();
  *reg &= ~bit;
  *out &= ~bit;
  SREG = oldSREG;
 } else if (mode == INPUT_PULLUP) {
  uint8_t oldSREG = SREG;
                cli();
  *reg &= ~bit;
  *out |= bit;
  SREG = oldSREG;
 } else {
  uint8_t oldSREG = SREG;
                cli();
  *reg |= bit;
  SREG = oldSREG;
 }
}
