
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ADC0_SC3 ;
 scalar_t__ ADC1_SC3 ;
 int analog_init () ;
 int analog_reference_internal ;
 scalar_t__ calibrating ;

void analogReference(uint8_t type)
{
 if (type) {

  if (!analog_reference_internal) {
   analog_reference_internal = 1;
   if (calibrating) {
    ADC0_SC3 = 0;



   }
   analog_init();
  }
 } else {

  if (analog_reference_internal) {
   analog_reference_internal = 0;
   if (calibrating) {
    ADC0_SC3 = 0;



   }
   analog_init();
  }
 }
}
