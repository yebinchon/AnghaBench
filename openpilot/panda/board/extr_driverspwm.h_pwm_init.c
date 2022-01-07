
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int CR1; int CCMR1; int CCMR2; int EGR; int ARR; int CCER; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int PWM_COUNTER_OVERFLOW ;
 int TIM_CCER_CC1E ;
 int TIM_CCER_CC2E ;
 int TIM_CCER_CC3E ;
 int TIM_CCER_CC4E ;
 int TIM_CCMR1_OC1M_1 ;
 int TIM_CCMR1_OC1M_2 ;
 int TIM_CCMR1_OC1PE ;
 int TIM_CCMR1_OC2M_1 ;
 int TIM_CCMR1_OC2M_2 ;
 int TIM_CCMR1_OC2PE ;
 int TIM_CCMR2_OC3M_1 ;
 int TIM_CCMR2_OC3M_2 ;
 int TIM_CCMR2_OC3PE ;
 int TIM_CCMR2_OC4M_1 ;
 int TIM_CCMR2_OC4M_2 ;
 int TIM_CCMR2_OC4PE ;
 int TIM_CR1_ARPE ;
 int TIM_CR1_CEN ;
 int TIM_EGR_UG ;

void pwm_init(TIM_TypeDef *TIM, uint8_t channel){

    TIM->CR1 = TIM_CR1_CEN | TIM_CR1_ARPE;


    switch(channel){
        case 1U:
            TIM->CCMR1 |= (TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1PE);
            TIM->CCER |= TIM_CCER_CC1E;
            break;
        case 2U:
            TIM->CCMR1 |= (TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2PE);
            TIM->CCER |= TIM_CCER_CC2E;
            break;
        case 3U:
            TIM->CCMR2 |= (TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3PE);
            TIM->CCER |= TIM_CCER_CC3E;
            break;
        case 4U:
            TIM->CCMR2 |= (TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4M_1 | TIM_CCMR2_OC4PE);
            TIM->CCER |= TIM_CCER_CC4E;
            break;
        default:
            break;
    }


    TIM->ARR = PWM_COUNTER_OVERFLOW;


    TIM->EGR |= TIM_EGR_UG;
}
