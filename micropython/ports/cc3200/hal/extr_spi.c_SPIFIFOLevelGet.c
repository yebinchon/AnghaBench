
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (scalar_t__) ;
 scalar_t__ MCSPI_O_XFERLEVEL ;

void
SPIFIFOLevelGet(unsigned long ulBase, unsigned long *pulTxLevel,
                 unsigned long *pulRxLevel)
{
  unsigned long ulRegVal;




  ulRegVal = HWREG(ulBase + MCSPI_O_XFERLEVEL);

  *pulTxLevel = (ulRegVal & 0xFF);

  *pulRxLevel = ((ulRegVal >> 8) & 0xFF);

}
