
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sembuf {int sem_op; int sem_num; scalar_t__ sem_flg; } ;
struct TYPE_3__ {int semId; int semNum; } ;
typedef TYPE_1__* PGSemaphore ;


 scalar_t__ EINTR ;
 int FATAL ;
 int elog (int ,char*,int ) ;
 scalar_t__ errno ;
 int semop (int ,struct sembuf*,int) ;

void
PGSemaphoreLock(PGSemaphore sema)
{
 int errStatus;
 struct sembuf sops;

 sops.sem_op = -1;
 sops.sem_flg = 0;
 sops.sem_num = sema->semNum;
 do
 {
  errStatus = semop(sema->semId, &sops, 1);
 } while (errStatus < 0 && errno == EINTR);

 if (errStatus < 0)
  elog(FATAL, "semop(id=%d) failed: %m", sema->semId);
}
