
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (int ) ;
 int NVIC_ST_RELOAD ;

unsigned long
SysTickPeriodGet(void)
{



    return(HWREG(NVIC_ST_RELOAD) + 1);
}
