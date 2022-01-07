
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ADC0_RA ;
 int ADC0_SC1A ;
 int ADC1_CFG2 ;
 int ADC1_RA ;
 int ADC1_SC1A ;
 int ADC_CFG2_MUXSEL ;
 int ADC_SC1_COCO ;
 int __disable_irq () ;
 int __enable_irq () ;
 int analogReadBusyADC0 ;
 int analogReadBusyADC1 ;
 int analog_right_shift ;
 scalar_t__ calibrating ;
 int* channel2sc1a ;
 int wait_for_cal () ;
 int yield () ;

int analogRead(uint8_t pin)
{
 int result;
 uint8_t index, channel;




 if (pin <= 13) {
  index = pin;
 } else if (pin <= 23) {
  index = pin - 14;




 } else if (pin >= 34 && pin <= 40) {
  index = pin - 24;

 } else {
  return 0;
 }




 channel = channel2sc1a[index];





 if (calibrating) wait_for_cal();






 __disable_irq();
startADC0:

 ADC0_SC1A = channel;
 analogReadBusyADC0 = 1;
 __enable_irq();
 while (1) {
  __disable_irq();
  if ((ADC0_SC1A & ADC_SC1_COCO)) {
   result = ADC0_RA;
   analogReadBusyADC0 = 0;
   __enable_irq();
   result >>= analog_right_shift;
   return result;
  }



  if (!analogReadBusyADC0) goto startADC0;
  __enable_irq();
  yield();
 }
}
