#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* uartx; } ;
typedef  TYPE_2__ pyb_uart_obj_t ;
struct TYPE_4__ {int SR; int ISR; } ;

/* Variables and functions */
 int USART_ISR_TXE ; 
 int USART_ISR_TXE_TXFNF ; 
 int USART_SR_TXE ; 

__attribute__((used)) static inline bool FUNC0(pyb_uart_obj_t *self) {
    #if defined(STM32F4)
    return self->uartx->SR & USART_SR_TXE;
    #elif defined(STM32H7)
    return self->uartx->ISR & USART_ISR_TXE_TXFNF;
    #else
    return self->uartx->ISR & USART_ISR_TXE;
    #endif
}