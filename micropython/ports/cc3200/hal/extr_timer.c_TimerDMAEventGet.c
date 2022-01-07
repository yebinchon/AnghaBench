
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 unsigned long HWREG (scalar_t__) ;
 scalar_t__ TIMER_O_DMAEV ;
 int TimerBaseValid (unsigned long) ;

unsigned long
TimerDMAEventGet(unsigned long ulBase)
{



    ASSERT(TimerBaseValid(ulBase));




    return(HWREG(ulBase + TIMER_O_DMAEV));
}
