
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBoolean ;


 int ASSERT (int ) ;
 unsigned long HWREG (scalar_t__) ;
 scalar_t__ TIMER_O_MIS ;
 scalar_t__ TIMER_O_RIS ;
 int TimerBaseValid (unsigned long) ;

unsigned long
TimerIntStatus(unsigned long ulBase, tBoolean bMasked)
{



    ASSERT(TimerBaseValid(ulBase));





    return(bMasked ? HWREG(ulBase + TIMER_O_MIS) :
           HWREG(ulBase + TIMER_O_RIS));
}
