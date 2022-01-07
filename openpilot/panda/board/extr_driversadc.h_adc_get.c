
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {unsigned int JSQR; int SR; int JDR1; int CR2; } ;


 TYPE_1__* ADC1 ;
 int ADC_CR2_JSWSTART ;
 int ADC_SR_JEOC ;

uint32_t adc_get(unsigned int channel) {




  ADC1->JSQR = channel << 15;




  ADC1->SR &= ~(ADC_SR_JEOC);
  ADC1->CR2 |= ADC_CR2_JSWSTART;
  while (!(ADC1->SR & ADC_SR_JEOC));

  return ADC1->JDR1;
}
