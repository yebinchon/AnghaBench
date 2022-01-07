
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ADC0_CLM0 ;
 int ADC0_CLM1 ;
 int ADC0_CLM2 ;
 int ADC0_CLM3 ;
 int ADC0_CLM4 ;
 int ADC0_CLMS ;
 int ADC0_CLP0 ;
 int ADC0_CLP1 ;
 int ADC0_CLP2 ;
 int ADC0_CLP3 ;
 int ADC0_CLP4 ;
 int ADC0_CLPS ;
 int ADC0_MG ;
 int ADC0_PG ;
 int ADC0_SC3 ;
 int ADC1_CLM0 ;
 int ADC1_CLM1 ;
 int ADC1_CLM2 ;
 int ADC1_CLM3 ;
 int ADC1_CLM4 ;
 int ADC1_CLMS ;
 int ADC1_CLP0 ;
 int ADC1_CLP1 ;
 int ADC1_CLP2 ;
 int ADC1_CLP3 ;
 int ADC1_CLP4 ;
 int ADC1_CLPS ;
 int ADC1_MG ;
 int ADC1_PG ;
 int ADC1_SC3 ;
 int ADC_SC3_CAL ;
 int __disable_irq () ;
 int __enable_irq () ;
 scalar_t__ calibrating ;

__attribute__((used)) static void wait_for_cal(void)
{
 uint16_t sum;
 __disable_irq();
 if (calibrating) {

  sum = ADC0_CLPS + ADC0_CLP4 + ADC0_CLP3 + ADC0_CLP2 + ADC0_CLP1 + ADC0_CLP0;
  sum = (sum / 2) | 0x8000;
  ADC0_PG = sum;



  sum = ADC0_CLMS + ADC0_CLM4 + ADC0_CLM3 + ADC0_CLM2 + ADC0_CLM1 + ADC0_CLM0;
  sum = (sum / 2) | 0x8000;
  ADC0_MG = sum;
  calibrating = 0;
 }
 __enable_irq();
}
