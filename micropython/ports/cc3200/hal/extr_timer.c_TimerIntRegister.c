
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 unsigned long INT_TIMERA0A ;
 unsigned long INT_TIMERA1A ;
 unsigned long INT_TIMERA2A ;
 unsigned long INT_TIMERA3A ;
 int IntEnable (unsigned long) ;
 int IntRegister (unsigned long,void (*) ()) ;
 unsigned long TIMERA0_BASE ;
 unsigned long TIMERA1_BASE ;
 unsigned long TIMERA2_BASE ;
 unsigned long TIMER_A ;
 unsigned long TIMER_B ;
 unsigned long TIMER_BOTH ;
 int TimerBaseValid (unsigned long) ;

void
TimerIntRegister(unsigned long ulBase, unsigned long ulTimer,
                 void (*pfnHandler)(void))
{



    ASSERT(TimerBaseValid(ulBase));
    ASSERT((ulTimer == TIMER_A) || (ulTimer == TIMER_B) ||
           (ulTimer == TIMER_BOTH));

    ulBase = ((ulBase == TIMERA0_BASE) ? INT_TIMERA0A :
              ((ulBase == TIMERA1_BASE) ? INT_TIMERA1A :
               ((ulBase == TIMERA2_BASE) ? INT_TIMERA2A : INT_TIMERA3A)));




    if(ulTimer & TIMER_A)
    {



        IntRegister(ulBase, pfnHandler);




        IntEnable(ulBase);
    }




    if(ulTimer & TIMER_B)
    {



        IntRegister(ulBase + 1, pfnHandler);




        IntEnable(ulBase + 1);
    }
}
