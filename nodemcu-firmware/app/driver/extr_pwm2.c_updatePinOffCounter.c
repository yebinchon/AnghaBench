
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int duty; int resolutionInterruptCounterMultiplier; int pulseResolutions; } ;
typedef TYPE_1__ pwm2_pin_setup_t ;
struct TYPE_6__ {int offInterruptCounter; } ;
typedef TYPE_2__ pwm2_pin_interrupt_t ;


 int getDutyAdjustment (int,int ) ;

__attribute__((used)) static void updatePinOffCounter(pwm2_pin_interrupt_t *iPin, pwm2_pin_setup_t *sPin) {
  iPin->offInterruptCounter = (sPin->duty + getDutyAdjustment(sPin->duty, sPin->pulseResolutions)) * sPin->resolutionInterruptCounterMultiplier;
}
