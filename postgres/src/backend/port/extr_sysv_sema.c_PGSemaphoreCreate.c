
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ semNum; int semId; } ;
typedef TYPE_1__* PGSemaphore ;


 int Assert (int) ;
 int IpcSemaphoreCreate (scalar_t__) ;
 int IpcSemaphoreInitialize (int ,scalar_t__,int) ;
 int IsUnderPostmaster ;
 int PANIC ;
 scalar_t__ SEMAS_PER_SET ;
 int elog (int ,char*) ;
 size_t maxSemaSets ;
 scalar_t__ maxSharedSemas ;
 int * mySemaSets ;
 scalar_t__ nextSemaNumber ;
 size_t numSemaSets ;
 scalar_t__ numSharedSemas ;
 TYPE_1__* sharedSemas ;

PGSemaphore
PGSemaphoreCreate(void)
{
 PGSemaphore sema;


 Assert(!IsUnderPostmaster);

 if (nextSemaNumber >= SEMAS_PER_SET)
 {

  if (numSemaSets >= maxSemaSets)
   elog(PANIC, "too many semaphores created");
  mySemaSets[numSemaSets] = IpcSemaphoreCreate(SEMAS_PER_SET);
  numSemaSets++;
  nextSemaNumber = 0;
 }

 if (numSharedSemas >= maxSharedSemas)
  elog(PANIC, "too many semaphores created");
 sema = &sharedSemas[numSharedSemas++];

 sema->semId = mySemaSets[numSemaSets - 1];
 sema->semNum = nextSemaNumber++;

 IpcSemaphoreInitialize(sema->semId, sema->semNum, 1);

 return sema;
}
