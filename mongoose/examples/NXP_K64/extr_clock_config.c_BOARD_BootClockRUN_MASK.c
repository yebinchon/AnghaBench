#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fcrdiv; int /*<<< orphan*/  ircs; int /*<<< orphan*/  irclkEnableMode; int /*<<< orphan*/  pll0Config; int /*<<< orphan*/  oscsel; } ;
struct TYPE_4__ {int /*<<< orphan*/  coreClock; int /*<<< orphan*/  simConfig; TYPE_1__ mcgConfig; int /*<<< orphan*/  oscConfig; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOARD_XTAL0_CLK_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SystemCoreClock ; 
 TYPE_2__ g_defaultClockConfigRun ; 
 int /*<<< orphan*/  kMCG_PllClkSelPll0 ; 

void FUNC6(void)
{
    FUNC4();

    FUNC1(&g_defaultClockConfigRun.oscConfig);
    FUNC5(BOARD_XTAL0_CLK_HZ);

    FUNC0(g_defaultClockConfigRun.mcgConfig.oscsel, kMCG_PllClkSelPll0,
                        &g_defaultClockConfigRun.mcgConfig.pll0Config);

    FUNC2(g_defaultClockConfigRun.mcgConfig.irclkEnableMode,
                                  g_defaultClockConfigRun.mcgConfig.ircs, g_defaultClockConfigRun.mcgConfig.fcrdiv);

    FUNC3(&g_defaultClockConfigRun.simConfig);

    SystemCoreClock = g_defaultClockConfigRun.coreClock;
}