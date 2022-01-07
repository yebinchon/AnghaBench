
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GPRCM_BASE ;
 scalar_t__ GPRCM_O_APPS_LPDS_WAKEUP_SRC ;
 unsigned long HWREG (scalar_t__) ;

unsigned long PRCMLPDSWakeupCauseGet(void)
{
  return (HWREG(GPRCM_BASE+ GPRCM_O_APPS_LPDS_WAKEUP_SRC));
}
