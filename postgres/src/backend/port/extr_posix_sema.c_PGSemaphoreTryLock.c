
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
 int sem_trywait (int ) ;

bool
PGSemaphoreTryLock(PGSemaphore sema)
{
 int errStatus;






 do
 {
  errStatus = sem_trywait(PG_SEM_REF(sema));
 } while (errStatus < 0 && errno == EINTR);

 if (errStatus < 0)
 {
  if (errno == EAGAIN || errno == EDEADLK)
   return 0;

  elog(FATAL, "sem_trywait failed: %m");
 }

 return 1;
}
