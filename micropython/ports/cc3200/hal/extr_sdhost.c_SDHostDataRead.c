
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HWREG (scalar_t__) ;
 scalar_t__ MMCHS_O_DATA ;
 scalar_t__ MMCHS_O_PSTATE ;

void
SDHostDataRead(unsigned long ulBase, unsigned long *pulData)
{



  while( !(HWREG(ulBase + MMCHS_O_PSTATE) & (1<<11)) )
  {

  }




  *pulData = HWREG(ulBase + MMCHS_O_DATA);
}
