
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int CCR; } ;
struct TYPE_3__ {int SMPR1; int CR2; } ;


 TYPE_2__* ADC ;
 TYPE_1__* ADC1 ;
 int ADC_CCR_TSVREFE ;
 int ADC_CCR_VBATE ;
 int ADC_CR2_ADON ;
 int ADC_SMPR1_SMP12 ;
 int ADC_SMPR1_SMP13 ;

void adc_init(void) {

  ADC->CCR = ADC_CCR_TSVREFE | ADC_CCR_VBATE;

  ADC1->CR2 = ADC_CR2_ADON;



  ADC1->SMPR1 = ADC_SMPR1_SMP12 | ADC_SMPR1_SMP13;
}
