
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fcrdiv; int ircs; int irclkEnableMode; int pll0Config; int oscsel; } ;
struct TYPE_4__ {int coreClock; int simConfig; TYPE_1__ mcgConfig; int oscConfig; } ;


 int BOARD_XTAL0_CLK_HZ ;
 int CLOCK_BootToPeeMode (int ,int ,int *) ;
 int CLOCK_InitOsc0 (int *) ;
 int CLOCK_SetInternalRefClkConfig (int ,int ,int ) ;
 int CLOCK_SetSimConfig (int *) ;
 int CLOCK_SetSimSafeDivs () ;
 int CLOCK_SetXtal0Freq (int ) ;
 int SystemCoreClock ;
 TYPE_2__ g_defaultClockConfigRun ;
 int kMCG_PllClkSelPll0 ;

void BOARD_BootClockRUN(void)
{
    CLOCK_SetSimSafeDivs();

    CLOCK_InitOsc0(&g_defaultClockConfigRun.oscConfig);
    CLOCK_SetXtal0Freq(BOARD_XTAL0_CLK_HZ);

    CLOCK_BootToPeeMode(g_defaultClockConfigRun.mcgConfig.oscsel, kMCG_PllClkSelPll0,
                        &g_defaultClockConfigRun.mcgConfig.pll0Config);

    CLOCK_SetInternalRefClkConfig(g_defaultClockConfigRun.mcgConfig.irclkEnableMode,
                                  g_defaultClockConfigRun.mcgConfig.ircs, g_defaultClockConfigRun.mcgConfig.fcrdiv);

    CLOCK_SetSimConfig(&g_defaultClockConfigRun.simConfig);

    SystemCoreClock = g_defaultClockConfigRun.coreClock;
}
