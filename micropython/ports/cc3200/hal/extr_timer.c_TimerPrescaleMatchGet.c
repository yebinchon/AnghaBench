
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 unsigned long HWREG (scalar_t__) ;
 unsigned long TIMER_A ;
 unsigned long TIMER_B ;
 unsigned long TIMER_BOTH ;
 scalar_t__ TIMER_O_TAPMR ;
 scalar_t__ TIMER_O_TBPMR ;
 int TimerBaseValid (unsigned long) ;

unsigned long
TimerPrescaleMatchGet(unsigned long ulBase, unsigned long ulTimer)
{



    ASSERT(TimerBaseValid(ulBase));
    ASSERT((ulTimer == TIMER_A) || (ulTimer == TIMER_B) ||
           (ulTimer == TIMER_BOTH));




    return((ulTimer == TIMER_A) ? HWREG(ulBase + TIMER_O_TAPMR) :
           HWREG(ulBase + TIMER_O_TBPMR));
}
