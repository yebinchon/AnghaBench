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

/* Variables and functions */
 int /*<<< orphan*/  UART_BIT_RATE_115200 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ uart_attached_to_dupterm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void) {
    //ets_wdt_disable(); // it's a pain while developing
    FUNC0();
    FUNC1(UART_BIT_RATE_115200, UART_BIT_RATE_115200);
    uart_attached_to_dupterm = 0;
}