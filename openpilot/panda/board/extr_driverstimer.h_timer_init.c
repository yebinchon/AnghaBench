
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PSC; scalar_t__ SR; int CR1; int DIER; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int TIM_CR1_CEN ;
 int TIM_DIER_UIE ;

void timer_init(TIM_TypeDef *TIM, int psc) {
  TIM->PSC = psc-1;
  TIM->DIER = TIM_DIER_UIE;
  TIM->CR1 = TIM_CR1_CEN;
  TIM->SR = 0;
}
