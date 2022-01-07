
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long HWREG ;


 int ASSERT (int) ;

void
SysTickPeriodSet(unsigned long ulPeriod)
{



    ASSERT((ulPeriod > 0) && (ulPeriod <= 16777216));




    HWREG(NVIC_ST_RELOAD) = ulPeriod - 1;
}
