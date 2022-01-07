
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ADC_O_adc_timer_current_count ;
 unsigned long HWREG (scalar_t__) ;

unsigned long ADCTimerValueGet(unsigned long ulBase)
{
  return(HWREG(ulBase + ADC_O_adc_timer_current_count));
}
