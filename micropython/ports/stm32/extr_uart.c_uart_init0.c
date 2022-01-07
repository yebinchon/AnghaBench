
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Usart16ClockSelection; int PeriphClockSelection; int member_0; } ;
typedef TYPE_1__ RCC_PeriphCLKInitTypeDef ;


 scalar_t__ HAL_OK ;
 scalar_t__ HAL_RCCEx_PeriphCLKConfig (TYPE_1__*) ;
 int RCC_PERIPHCLK_USART16 ;
 int RCC_PERIPHCLK_USART234578 ;
 int RCC_USART16CLKSOURCE_D2PCLK2 ;
 int RCC_USART234578CLKSOURCE_D2PCLK1 ;
 int __fatal_error (char*) ;

void uart_init0(void) {
}
