
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (scalar_t__) ;
 unsigned long MCSPI_CH0CONF_WL_M ;
 scalar_t__ MCSPI_O_CH0CONF ;
 long SPITransfer16 (unsigned long,unsigned short*,unsigned short*,unsigned long,unsigned long) ;
 long SPITransfer32 (unsigned long,unsigned long*,unsigned long*,unsigned long,unsigned long) ;
 long SPITransfer8 (unsigned long,unsigned char*,unsigned char*,unsigned long,unsigned long) ;
 unsigned long SPI_WL_16 ;
 unsigned long SPI_WL_32 ;
 unsigned long SPI_WL_8 ;

long SPITransfer(unsigned long ulBase, unsigned char *ucDout,
                   unsigned char *ucDin, unsigned long ulCount,
                   unsigned long ulFlags)
{
  unsigned long ulWordLength;
  long lRet;




  ulWordLength = (HWREG(ulBase + MCSPI_O_CH0CONF) & MCSPI_CH0CONF_WL_M);




  if( !((ulWordLength == SPI_WL_8) || (ulWordLength == SPI_WL_16) ||
     (ulWordLength == SPI_WL_32)) )
  {
    return -1;
  }

  if( ulWordLength == SPI_WL_8 )
  {



    lRet = SPITransfer8(ulBase,ucDout,ucDin,ulCount,ulFlags);
  }
  else if( ulWordLength == SPI_WL_16 )
  {




    lRet = SPITransfer16(ulBase,(unsigned short *)ucDout,
                  (unsigned short *)ucDin,ulCount,ulFlags);
  }
  else
  {



    lRet = SPITransfer32(ulBase,(unsigned long *)ucDout,
                  (unsigned long *)ucDin,ulCount,ulFlags);
  }




  return lRet;

}
