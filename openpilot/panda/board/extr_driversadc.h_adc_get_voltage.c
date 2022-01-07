
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int ADCCHAN_VOLTAGE ;
 unsigned int adc_get (int ) ;

uint32_t adc_get_voltage(void) {







  return (adc_get(ADCCHAN_VOLTAGE) * 8862U) / 1000U;
}
