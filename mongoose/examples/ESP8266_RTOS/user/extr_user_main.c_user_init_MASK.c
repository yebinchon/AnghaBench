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
 int /*<<< orphan*/  MGOS_TASK_PRIORITY ; 
 int MG_TASK_STACK_SIZE ; 
 int UART_CLK_FREQ ; 
 int /*<<< orphan*/  mg_task ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(void) {
  FUNC2(0, UART_CLK_FREQ / 115200);

  FUNC0("Free RAM: %d\r\n", FUNC1());
  FUNC3(mg_task, (const signed char *) "mongoose",
              MG_TASK_STACK_SIZE / 4, /* in 32-bit words */
              NULL, MGOS_TASK_PRIORITY, NULL);
}