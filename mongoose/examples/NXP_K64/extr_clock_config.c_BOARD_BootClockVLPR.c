
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int irclkEnableMode; int ircs; int fcrdiv; } ;
struct TYPE_4__ {int coreClock; int simConfig; TYPE_1__ mcgConfig; } ;


 int CLOCK_BootToBlpiMode (int ,int ,int ) ;
 int CLOCK_SetSimConfig (int *) ;
 int CLOCK_SetSimSafeDivs () ;
 int SMC ;
 scalar_t__ SMC_GetPowerModeState (int ) ;
 int SMC_SetPowerModeProtection (int ,int ) ;
 int SMC_SetPowerModeVlpr (int ,int) ;
 int SystemCoreClock ;
 TYPE_2__ g_defaultClockConfigVlpr ;
 int kSMC_AllowPowerModeAll ;
 scalar_t__ kSMC_PowerStateVlpr ;

void BOARD_BootClockVLPR(void)
{
    CLOCK_SetSimSafeDivs();

    CLOCK_BootToBlpiMode(g_defaultClockConfigVlpr.mcgConfig.fcrdiv, g_defaultClockConfigVlpr.mcgConfig.ircs,
                         g_defaultClockConfigVlpr.mcgConfig.irclkEnableMode);

    CLOCK_SetSimConfig(&g_defaultClockConfigVlpr.simConfig);

    SystemCoreClock = g_defaultClockConfigVlpr.coreClock;

    SMC_SetPowerModeProtection(SMC, kSMC_AllowPowerModeAll);
    SMC_SetPowerModeVlpr(SMC, 0);
    while (SMC_GetPowerModeState(SMC) != kSMC_PowerStateVlpr)
    {
    }
}
