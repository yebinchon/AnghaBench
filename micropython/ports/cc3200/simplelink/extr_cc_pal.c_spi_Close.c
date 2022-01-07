
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fd_t ;


 unsigned long LSPI_BASE ;
 int MAP_PRCMPeripheralClkDisable (int ,int) ;
 int MAP_SPICSDisable (unsigned long) ;
 int MAP_SPIDisable (unsigned long) ;
 int MAP_SPIReset (unsigned long) ;
 int PRCM_LSPI ;
 int PRCM_RUN_MODE_CLK ;
 int PRCM_SLP_MODE_CLK ;
 scalar_t__ g_SpiFd ;

int spi_Close(Fd_t fd)
{
    unsigned long ulBase = LSPI_BASE;

    g_SpiFd = 0;


 MAP_SPICSDisable(LSPI_BASE);



 MAP_SPIDisable(ulBase);


 MAP_SPIReset(ulBase);


 MAP_PRCMPeripheralClkDisable(PRCM_LSPI,PRCM_RUN_MODE_CLK | PRCM_SLP_MODE_CLK);

    return 0;
}
