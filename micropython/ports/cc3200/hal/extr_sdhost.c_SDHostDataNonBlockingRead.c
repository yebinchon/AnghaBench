
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBoolean ;


 int HWREG (scalar_t__) ;
 scalar_t__ MMCHS_O_DATA ;
 scalar_t__ MMCHS_O_PSTATE ;

tBoolean
SDHostDataNonBlockingRead(unsigned long ulBase, unsigned long *pulData)
{




  if( (HWREG(ulBase + MMCHS_O_PSTATE) & (1<11)) )
  {



    *pulData = HWREG(ulBase + MMCHS_O_DATA);




    return(1);
  }
  else
  {



    return(0);
  }
}
