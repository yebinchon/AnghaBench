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
 int* IXP4XX_GPIO_GPCLKR ; 
 int /*<<< orphan*/  IXP4XX_GPIO_LOW ; 
 int /*<<< orphan*/  IXP4XX_GPIO_OUT ; 
 int /*<<< orphan*/  WDT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int heartbeat ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_counter ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC0(&wdt_counter, heartbeat * 2);

	/* Disable clock generator output on GPIO 14/15 */
	*IXP4XX_GPIO_GPCLKR &= ~(1 << 8);

	/* activate GPIO 14 out */
	FUNC1(14, IXP4XX_GPIO_OUT);
	FUNC2(14, IXP4XX_GPIO_LOW);

	if (!FUNC4(WDT_RUNNING, &wdt_status))
		FUNC5(0);
	FUNC3(WDT_RUNNING, &wdt_status);
}