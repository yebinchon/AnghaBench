
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGSemaphore ;


 scalar_t__ EAGAIN ;
 scalar_t__ EDEADLK ;
 scalar_t__ EINTR ;
 int FATAL ;
 int PG_SEM_REF (int ) ;
 int elog (int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ sem_trywait (int ) ;

void
PGSemaphoreReset(PGSemaphore sema)
{




 for (;;)
 {
  if (sem_trywait(PG_SEM_REF(sema)) < 0)
  {
   if (errno == EAGAIN || errno == EDEADLK)
    break;
   if (errno == EINTR)
    continue;
   elog(FATAL, "sem_trywait failed: %m");
  }
 }
}
