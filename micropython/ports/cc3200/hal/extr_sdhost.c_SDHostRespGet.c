
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (scalar_t__) ;
 scalar_t__ MMCHS_O_RSP10 ;
 scalar_t__ MMCHS_O_RSP32 ;
 scalar_t__ MMCHS_O_RSP54 ;
 scalar_t__ MMCHS_O_RSP76 ;

void
SDHostRespGet(unsigned long ulBase, unsigned long ulRespnse[4])
{




  ulRespnse[0] = HWREG(ulBase + MMCHS_O_RSP10);
  ulRespnse[1] = HWREG(ulBase + MMCHS_O_RSP32);
  ulRespnse[2] = HWREG(ulBase + MMCHS_O_RSP54);
  ulRespnse[3] = HWREG(ulBase + MMCHS_O_RSP76);

}
