
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGSemaphore ;


 int PGSemaphoreCreate () ;
 scalar_t__ ShmemAllocUnlocked (int ) ;
 int * SpinlockSemaArray ;
 int SpinlockSemaSize () ;
 int SpinlockSemas () ;

void
SpinlockSemaInit(void)
{
 PGSemaphore *spinsemas;
 int nsemas = SpinlockSemas();
 int i;





 spinsemas = (PGSemaphore *) ShmemAllocUnlocked(SpinlockSemaSize());
 for (i = 0; i < nsemas; ++i)
  spinsemas[i] = PGSemaphoreCreate();
 SpinlockSemaArray = spinsemas;
}
