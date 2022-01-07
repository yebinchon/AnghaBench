
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (scalar_t__) ;
 unsigned long MCSPI_CH0STAT_RXS ;
 scalar_t__ MCSPI_O_CH0STAT ;
 scalar_t__ MCSPI_O_RX0 ;

void
SPIDataGet(unsigned long ulBase, unsigned long *pulData)
{



  while(!(HWREG(ulBase + MCSPI_O_CH0STAT) & MCSPI_CH0STAT_RXS))
  {
  }




  *pulData = HWREG(ulBase + MCSPI_O_RX0);
}
