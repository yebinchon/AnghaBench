
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGSemaphore ;


 scalar_t__ EINTR ;
 int FATAL ;
 int PG_SEM_REF (int ) ;
 int elog (int ,char*) ;
 scalar_t__ errno ;
 int sem_post (int ) ;

void
PGSemaphoreUnlock(PGSemaphore sema)
{
 int errStatus;







 do
 {
  errStatus = sem_post(PG_SEM_REF(sema));
 } while (errStatus < 0 && errno == EINTR);

 if (errStatus < 0)
  elog(FATAL, "sem_post failed: %m");
}
