
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 scalar_t__ CORE_NUM_DIGITAL ;
 scalar_t__ INPUT ;
 scalar_t__ OUTPUT ;
 int PORT_PCR_DSE ;
 int PORT_PCR_MUX (int) ;
 int PORT_PCR_PE ;
 int PORT_PCR_PS ;
 int PORT_PCR_SRE ;
 int* portConfigRegister (scalar_t__) ;
 int* portModeRegister (scalar_t__) ;

void pinMode(uint8_t pin, uint8_t mode)
{
 volatile uint32_t *config;

 if (pin >= CORE_NUM_DIGITAL) return;
 config = portConfigRegister(pin);

 if (mode == OUTPUT) {
  *portModeRegister(pin) = 1;
  *config = PORT_PCR_SRE | PORT_PCR_DSE | PORT_PCR_MUX(1);
 } else {
  *portModeRegister(pin) = 0;
  if (mode == INPUT) {
   *config = PORT_PCR_MUX(1);
  } else {
   *config = PORT_PCR_MUX(1) | PORT_PCR_PE | PORT_PCR_PS;
  }
 }
}
