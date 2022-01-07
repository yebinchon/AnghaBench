
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 scalar_t__ CORE_NUM_DIGITAL ;
 int volatile PORT_PCR_PE ;
 int volatile PORT_PCR_PS ;
 int* portClearRegister (scalar_t__) ;
 int* portConfigRegister (scalar_t__) ;
 scalar_t__* portModeRegister (scalar_t__) ;
 int* portSetRegister (scalar_t__) ;

void digitalWrite(uint8_t pin, uint8_t val)
{
 if (pin >= CORE_NUM_DIGITAL) return;
 if (*portModeRegister(pin)) {
  if (val) {
   *portSetRegister(pin) = 1;
  } else {
   *portClearRegister(pin) = 1;
  }
 } else {
  volatile uint32_t *config = portConfigRegister(pin);
  if (val) {

   *config |= (PORT_PCR_PE | PORT_PCR_PS);

  } else {

   *config &= ~(PORT_PCR_PE);

  }
 }

}
