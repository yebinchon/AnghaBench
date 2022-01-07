
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fd_t ;


 unsigned long LSPI_BASE ;
 int MAP_PRCMPeripheralClkEnable (int ,int) ;
 int MAP_PRCMPeripheralClockGet (int ) ;
 int MAP_SPICSDisable (unsigned long) ;
 int MAP_SPIConfigSetExpClk (unsigned long,int ,unsigned long,int ,int ,int) ;
 int MAP_SPIDisable (unsigned long) ;
 int MAP_SPIEnable (unsigned long) ;
 int MAP_SPIReset (unsigned long) ;
 int PRCM_LSPI ;
 int PRCM_RUN_MODE_CLK ;
 int PRCM_SLP_MODE_CLK ;
 int SPI_4PIN_MODE ;
 int SPI_CS_ACTIVEHIGH ;
 int SPI_MODE_MASTER ;
 unsigned long SPI_RATE_20M ;
 int SPI_SUB_MODE_0 ;
 int SPI_SW_CTRL_CS ;
 int SPI_TURBO_OFF ;
 int SPI_WL_32 ;
 int g_SpiFd ;

Fd_t spi_Open(char *ifName, unsigned long flags)
{
    unsigned long ulBase;
    unsigned long ulSpiBitRate = SPI_RATE_20M;


    ulBase = LSPI_BASE;


    MAP_PRCMPeripheralClkEnable(PRCM_LSPI,PRCM_RUN_MODE_CLK | PRCM_SLP_MODE_CLK);


    MAP_SPICSDisable(ulBase);


    MAP_SPIDisable(ulBase);


    MAP_SPIReset(ulBase);





    MAP_SPIConfigSetExpClk(ulBase,MAP_PRCMPeripheralClockGet(PRCM_LSPI),
            ulSpiBitRate,SPI_MODE_MASTER,SPI_SUB_MODE_0,
                     (SPI_SW_CTRL_CS |
                     SPI_4PIN_MODE |
                     SPI_TURBO_OFF |
                     SPI_CS_ACTIVEHIGH |
                     SPI_WL_32));

 MAP_SPIEnable(ulBase);

    g_SpiFd = 1;
    return g_SpiFd;
}
