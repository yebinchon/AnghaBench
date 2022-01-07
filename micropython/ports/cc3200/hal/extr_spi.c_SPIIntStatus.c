
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBoolean ;


 scalar_t__ APPS_CONFIG_BASE ;
 scalar_t__ APPS_CONFIG_O_DMA_DONE_INT_STS_MASKED ;
 scalar_t__ APPS_CONFIG_O_DMA_DONE_INT_STS_RAW ;
 unsigned long HWREG (scalar_t__) ;
 scalar_t__ MCSPI_O_IRQENABLE ;
 scalar_t__ MCSPI_O_IRQSTATUS ;
 unsigned long SPIDmaMaskGet (unsigned long) ;
 unsigned long SPI_INT_DMARX ;
 unsigned long SPI_INT_DMATX ;

unsigned long
SPIIntStatus(unsigned long ulBase, tBoolean bMasked)
{
  unsigned long ulIntStat;
  unsigned long ulIntFlag;
  unsigned long ulDmaMsk;




  ulIntFlag = HWREG(ulBase + MCSPI_O_IRQSTATUS) & 0x0003000F;

  if(bMasked)
  {
     ulIntFlag &= HWREG(ulBase + MCSPI_O_IRQENABLE);
  }




  ulDmaMsk = SPIDmaMaskGet(ulBase);




  if(bMasked)
  {
    ulIntStat = HWREG(APPS_CONFIG_BASE + APPS_CONFIG_O_DMA_DONE_INT_STS_MASKED);
  }
  else
  {
    ulIntStat = HWREG(APPS_CONFIG_BASE + APPS_CONFIG_O_DMA_DONE_INT_STS_RAW);
  }




  if(ulIntStat & ulDmaMsk)
  {
     ulIntFlag |= SPI_INT_DMATX;
  }




  if(ulIntStat & (ulDmaMsk >> 1))
  {
     ulIntFlag |= SPI_INT_DMARX;
  }




  return(ulIntFlag);
}
