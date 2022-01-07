
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PSC; int ARR; scalar_t__ SR; int DIER; int CR1; } ;


 int NVIC_EnableIRQ (int ) ;
 TYPE_1__* TIM4 ;
 int TIM4_IRQn ;
 int TIM_CR1_CEN ;
 int TIM_DIER_UIE ;

void setup_timer4(void) {

  TIM4->PSC = 48-1;
  TIM4->CR1 = TIM_CR1_CEN;
  TIM4->ARR = 30-1;


  NVIC_EnableIRQ(TIM4_IRQn);


  TIM4->DIER = TIM_DIER_UIE;
  TIM4->SR = 0;
}
