
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_PRCMPeripheralClkEnable (int ,int) ;
 int MAP_PRCMPeripheralReset (int ) ;
 int PRCM_DTHE ;
 int PRCM_RUN_MODE_CLK ;
 int PRCM_SLP_MODE_CLK ;

void CRYPTOHASH_Init (void) {

    MAP_PRCMPeripheralClkEnable(PRCM_DTHE, PRCM_RUN_MODE_CLK | PRCM_SLP_MODE_CLK);
    MAP_PRCMPeripheralReset(PRCM_DTHE);
}
