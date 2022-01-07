
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (scalar_t__) ;
 unsigned long MCSPI_CH0STAT_RXS ;
 scalar_t__ MCSPI_O_CH0STAT ;
 scalar_t__ MCSPI_O_RX0 ;

long
SPIDataGetNonBlocking(unsigned long ulBase, unsigned long *pulData)
{
  unsigned long ulRegVal;




  ulRegVal = HWREG(ulBase + MCSPI_O_CH0STAT);




  if(ulRegVal & MCSPI_CH0STAT_RXS)
  {
    *pulData = HWREG(ulBase + MCSPI_O_RX0);
    return(1);
  }

   return(0);
}
