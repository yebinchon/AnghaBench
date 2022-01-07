
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGSemaphore ;


 int FATAL ;
 int GetLastError () ;
 int ReleaseSemaphore (int ,int,int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;

void
PGSemaphoreUnlock(PGSemaphore sema)
{
 if (!ReleaseSemaphore(sema, 1, ((void*)0)))
  ereport(FATAL,
    (errmsg("could not unlock semaphore: error code %lu",
      GetLastError())));
}
