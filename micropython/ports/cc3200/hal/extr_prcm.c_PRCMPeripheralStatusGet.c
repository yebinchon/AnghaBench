
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBoolean ;
struct TYPE_2__ {scalar_t__ ulRstReg; } ;


 scalar_t__ ARCM_BASE ;
 unsigned long HWREG (scalar_t__) ;
 unsigned long PRCM_ENABLE_STATUS ;
 TYPE_1__* PRCM_PeriphRegsList ;

tBoolean PRCMPeripheralStatusGet(unsigned long ulPeripheral)
{
  unsigned long ReadyBit;




  ReadyBit = HWREG(ARCM_BASE + PRCM_PeriphRegsList[ulPeripheral].ulRstReg);
  ReadyBit = ReadyBit & PRCM_ENABLE_STATUS;

  if (ReadyBit)
  {



    return(1);
  }
  else
  {



    return(0);
  }
}
