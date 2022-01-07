
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int currentInterruptCounter; int pulseInterruptCcounter; int offInterruptCounter; int gpioMask; } ;
typedef TYPE_1__ pwm2_pin_interrupt_t ;



__attribute__((used)) static inline void computeIsPinOn(pwm2_pin_interrupt_t *pin, uint16_t *maskOn) {
  if (pin->currentInterruptCounter == pin->pulseInterruptCcounter) {
    pin->currentInterruptCounter = 1;
  } else {
    pin->currentInterruptCounter++;
  }

  if (pin->currentInterruptCounter < pin->offInterruptCounter) {
    *maskOn |= pin->gpioMask;
  }
}
