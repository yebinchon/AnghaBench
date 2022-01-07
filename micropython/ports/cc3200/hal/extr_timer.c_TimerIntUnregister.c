
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 unsigned long INT_TIMERA0A ;
 unsigned long INT_TIMERA1A ;
 unsigned long INT_TIMERA2A ;
 unsigned long INT_TIMERA3A ;
 int IntDisable (unsigned long) ;
 int IntUnregister (unsigned long) ;
 unsigned long TIMERA0_BASE ;
 unsigned long TIMERA1_BASE ;
 unsigned long TIMERA2_BASE ;
 unsigned long TIMER_A ;
 unsigned long TIMER_B ;
 unsigned long TIMER_BOTH ;
 int TimerBaseValid (unsigned long) ;

void
TimerIntUnregister(unsigned long ulBase, unsigned long ulTimer)
{



    ASSERT(TimerBaseValid(ulBase));
    ASSERT((ulTimer == TIMER_A) || (ulTimer == TIMER_B) ||
           (ulTimer == TIMER_BOTH));





    ulBase = ((ulBase == TIMERA0_BASE) ? INT_TIMERA0A :
              ((ulBase == TIMERA1_BASE) ? INT_TIMERA1A :
               ((ulBase == TIMERA2_BASE) ? INT_TIMERA2A : INT_TIMERA3A)));






    if(ulTimer & TIMER_A)
    {



        IntDisable(ulBase);




        IntUnregister(ulBase);
    }




    if(ulTimer & TIMER_B)
    {



        IntDisable(ulBase + 1);




        IntUnregister(ulBase + 1);
    }
}
