
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int resolutionInterruptCounterMultiplier; int resolutionCPUTicks; } ;
typedef TYPE_1__ pwm2_pin_setup_t ;



__attribute__((used)) static void updatePinResolutionToInterruptsMultiplier(pwm2_pin_setup_t *sPin, uint32_t timerCPUTicks) {
  sPin->resolutionInterruptCounterMultiplier = sPin->resolutionCPUTicks / timerCPUTicks;
}
