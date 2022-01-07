
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (scalar_t__) ;
 scalar_t__ MCASP_0_WFIFOSTS ;

unsigned long I2STxFIFOStatusGet(unsigned long ulBase)
{



  return HWREG(ulBase + MCASP_0_WFIFOSTS);
}
