
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (scalar_t__) ;
 scalar_t__ MMCHS_O_CSRE ;

unsigned long
SDHostCardErrorMaskGet(unsigned long ulBase)
{



  return(HWREG(ulBase + MMCHS_O_CSRE));
}
