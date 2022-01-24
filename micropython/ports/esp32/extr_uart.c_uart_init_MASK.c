#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uart_isr_handle_t ;

/* Variables and functions */
 int ESP_INTR_FLAG_IRAM ; 
 int ESP_INTR_FLAG_LOWMED ; 
 int /*<<< orphan*/  UART_NUM_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_irq_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC2(void) {
    uart_isr_handle_t handle;
    FUNC1(UART_NUM_0, uart_irq_handler, NULL, ESP_INTR_FLAG_LOWMED | ESP_INTR_FLAG_IRAM, &handle);
    FUNC0(UART_NUM_0);
}