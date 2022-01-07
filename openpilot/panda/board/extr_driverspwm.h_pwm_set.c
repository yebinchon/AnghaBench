
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint16_t ;
struct TYPE_3__ {unsigned int CCR1; unsigned int CCR2; unsigned int CCR3; unsigned int CCR4; } ;
typedef TYPE_1__ TIM_TypeDef ;


 unsigned int PWM_COUNTER_OVERFLOW ;

void pwm_set(TIM_TypeDef *TIM, uint8_t channel, uint8_t percentage){
    uint16_t comp_value = (((uint16_t) percentage * PWM_COUNTER_OVERFLOW) / 100U);
    switch(channel){
        case 1U:
            TIM->CCR1 = comp_value;
            break;
        case 2U:
            TIM->CCR2 = comp_value;
            break;
        case 3U:
            TIM->CCR3 = comp_value;
            break;
        case 4U:
            TIM->CCR4 = comp_value;
            break;
        default:
            break;
    }
}
