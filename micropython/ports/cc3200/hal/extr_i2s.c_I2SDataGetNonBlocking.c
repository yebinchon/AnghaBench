
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HWREG (scalar_t__) ;
 scalar_t__ MCASP_O_RXBUF0 ;
 scalar_t__ MCASP_O_RXSTAT ;
 int MCASP_RXSTAT_RDATA ;

long I2SDataGetNonBlocking(unsigned long ulBase, unsigned long ulDataLine,
                unsigned long *pulData)
{




  ulDataLine = (ulDataLine-1) << 2;




  if(HWREG(ulBase + MCASP_O_RXSTAT) & MCASP_RXSTAT_RDATA)
  {



    *pulData = HWREG(ulBase + MCASP_O_RXBUF0 + ulDataLine);
    return 0;
  }




  return -1;
}
