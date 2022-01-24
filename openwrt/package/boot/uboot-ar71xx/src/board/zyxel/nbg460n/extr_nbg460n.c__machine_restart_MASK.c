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
 scalar_t__ AR71XX_RESET_BASE ; 
 scalar_t__ AR91XX_RESET_REG_RESET_MODULE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int RESET_MODULE_DDR ; 
 int RESET_MODULE_FULL_CHIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	for (;;) {
		FUNC2((RESET_MODULE_FULL_CHIP | RESET_MODULE_DDR),
			FUNC0(AR71XX_RESET_BASE + AR91XX_RESET_REG_RESET_MODULE));
        FUNC1(FUNC0(AR71XX_RESET_BASE + AR91XX_RESET_REG_RESET_MODULE));
	}
}