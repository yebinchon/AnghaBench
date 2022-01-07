
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ APPS_RCM_O_APPS_RCM_INTERRUPT_STATUS ;
 scalar_t__ ARCM_BASE ;
 unsigned long HWREG (scalar_t__) ;

unsigned long PRCMIntStatus(void)
{
    return HWREG(ARCM_BASE + APPS_RCM_O_APPS_RCM_INTERRUPT_STATUS);
}
