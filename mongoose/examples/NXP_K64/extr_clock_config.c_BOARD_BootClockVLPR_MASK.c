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
struct TYPE_3__ {int /*<<< orphan*/  irclkEnableMode; int /*<<< orphan*/  ircs; int /*<<< orphan*/  fcrdiv; } ;
struct TYPE_4__ {int /*<<< orphan*/  coreClock; int /*<<< orphan*/  simConfig; TYPE_1__ mcgConfig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SMC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SystemCoreClock ; 
 TYPE_2__ g_defaultClockConfigVlpr ; 
 int /*<<< orphan*/  kSMC_AllowPowerModeAll ; 
 scalar_t__ kSMC_PowerStateVlpr ; 

void FUNC6(void)
{
    FUNC2();

    FUNC0(g_defaultClockConfigVlpr.mcgConfig.fcrdiv, g_defaultClockConfigVlpr.mcgConfig.ircs,
                         g_defaultClockConfigVlpr.mcgConfig.irclkEnableMode);

    FUNC1(&g_defaultClockConfigVlpr.simConfig);

    SystemCoreClock = g_defaultClockConfigVlpr.coreClock;

    FUNC4(SMC, kSMC_AllowPowerModeAll);
    FUNC5(SMC, false);
    while (FUNC3(SMC) != kSMC_PowerStateVlpr)
    {
    }
}