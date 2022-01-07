
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union semun {scalar_t__ val; } ;
typedef int IpcSemaphoreId ;


 int IPC_RMID ;
 int LOG ;
 int elog (int ,char*,int ) ;
 scalar_t__ semctl (int ,int ,int ,union semun) ;

__attribute__((used)) static void
IpcSemaphoreKill(IpcSemaphoreId semId)
{
 union semun semun;

 semun.val = 0;

 if (semctl(semId, 0, IPC_RMID, semun) < 0)
  elog(LOG, "semctl(%d, 0, IPC_RMID, ...) failed: %m", semId);
}
