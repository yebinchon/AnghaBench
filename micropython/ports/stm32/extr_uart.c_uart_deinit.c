
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int is_enabled; int uart_id; TYPE_1__* uartx; } ;
typedef TYPE_2__ pyb_uart_obj_t ;
struct TYPE_4__ {int CR1; } ;


 int HAL_NVIC_DisableIRQ (int ) ;
 int UART10_IRQn ;
 int UART4_IRQn ;
 int UART5_IRQn ;
 int UART7_IRQn ;
 int UART8_IRQn ;
 int UART9_IRQn ;
 int USART1_IRQn ;
 int USART2_IRQn ;
 int USART3_IRQn ;
 int USART6_IRQn ;
 int USART_CR1_UE ;
 int __HAL_RCC_UART10_CLK_DISABLE () ;
 int __HAL_RCC_UART10_FORCE_RESET () ;
 int __HAL_RCC_UART10_RELEASE_RESET () ;
 int __HAL_RCC_UART4_CLK_DISABLE () ;
 int __HAL_RCC_UART4_FORCE_RESET () ;
 int __HAL_RCC_UART4_RELEASE_RESET () ;
 int __HAL_RCC_UART5_CLK_DISABLE () ;
 int __HAL_RCC_UART5_FORCE_RESET () ;
 int __HAL_RCC_UART5_RELEASE_RESET () ;
 int __HAL_RCC_UART7_CLK_DISABLE () ;
 int __HAL_RCC_UART7_FORCE_RESET () ;
 int __HAL_RCC_UART7_RELEASE_RESET () ;
 int __HAL_RCC_UART8_CLK_DISABLE () ;
 int __HAL_RCC_UART8_FORCE_RESET () ;
 int __HAL_RCC_UART8_RELEASE_RESET () ;
 int __HAL_RCC_UART9_CLK_DISABLE () ;
 int __HAL_RCC_UART9_FORCE_RESET () ;
 int __HAL_RCC_UART9_RELEASE_RESET () ;
 int __HAL_RCC_USART1_CLK_DISABLE () ;
 int __HAL_RCC_USART1_FORCE_RESET () ;
 int __HAL_RCC_USART1_RELEASE_RESET () ;
 int __HAL_RCC_USART2_CLK_DISABLE () ;
 int __HAL_RCC_USART2_FORCE_RESET () ;
 int __HAL_RCC_USART2_RELEASE_RESET () ;
 int __HAL_RCC_USART3_CLK_DISABLE () ;
 int __HAL_RCC_USART3_FORCE_RESET () ;
 int __HAL_RCC_USART3_RELEASE_RESET () ;
 int __HAL_RCC_USART4_CLK_DISABLE () ;
 int __HAL_RCC_USART4_FORCE_RESET () ;
 int __HAL_RCC_USART4_RELEASE_RESET () ;
 int __HAL_RCC_USART5_CLK_DISABLE () ;
 int __HAL_RCC_USART5_FORCE_RESET () ;
 int __HAL_RCC_USART5_RELEASE_RESET () ;
 int __HAL_RCC_USART6_CLK_DISABLE () ;
 int __HAL_RCC_USART6_FORCE_RESET () ;
 int __HAL_RCC_USART6_RELEASE_RESET () ;
 int __HAL_RCC_USART7_CLK_DISABLE () ;
 int __HAL_RCC_USART7_FORCE_RESET () ;
 int __HAL_RCC_USART7_RELEASE_RESET () ;
 int __HAL_RCC_USART8_CLK_DISABLE () ;
 int __HAL_RCC_USART8_FORCE_RESET () ;
 int __HAL_RCC_USART8_RELEASE_RESET () ;

void uart_deinit(pyb_uart_obj_t *self) {
    self->is_enabled = 0;


    self->uartx->CR1 &= ~USART_CR1_UE;


    if (self->uart_id == 1) {
        HAL_NVIC_DisableIRQ(USART1_IRQn);
        __HAL_RCC_USART1_FORCE_RESET();
        __HAL_RCC_USART1_RELEASE_RESET();
        __HAL_RCC_USART1_CLK_DISABLE();
    }
}
