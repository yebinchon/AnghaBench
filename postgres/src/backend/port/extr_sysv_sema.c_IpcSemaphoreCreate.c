
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union semun {scalar_t__ val; } ;
typedef scalar_t__ pid_t ;
struct TYPE_3__ {int semNum; scalar_t__ semId; } ;
typedef TYPE_1__ PGSemaphoreData ;
typedef scalar_t__ IpcSemaphoreId ;


 scalar_t__ ESRCH ;
 int IPC_RMID ;
 scalar_t__ InternalIpcSemaphoreCreate (int ,int) ;
 scalar_t__ IpcSemaphoreGetLastPID (scalar_t__,int) ;
 scalar_t__ IpcSemaphoreGetValue (scalar_t__,int) ;
 int IpcSemaphoreInitialize (scalar_t__,int,scalar_t__) ;
 scalar_t__ PGSemaMagic ;
 int PGSemaphoreUnlock (TYPE_1__*) ;
 scalar_t__ errno ;
 scalar_t__ getpid () ;
 scalar_t__ kill (scalar_t__,int ) ;
 int nextSemaKey ;
 scalar_t__ semctl (scalar_t__,int ,int ,union semun) ;
 scalar_t__ semget (int ,int,int ) ;

__attribute__((used)) static IpcSemaphoreId
IpcSemaphoreCreate(int numSems)
{
 IpcSemaphoreId semId;
 union semun semun;
 PGSemaphoreData mysema;


 for (nextSemaKey++;; nextSemaKey++)
 {
  pid_t creatorPID;


  semId = InternalIpcSemaphoreCreate(nextSemaKey, numSems + 1);
  if (semId >= 0)
   break;


  semId = semget(nextSemaKey, numSems + 1, 0);
  if (semId < 0)
   continue;
  if (IpcSemaphoreGetValue(semId, numSems) != PGSemaMagic)
   continue;





  creatorPID = IpcSemaphoreGetLastPID(semId, numSems);
  if (creatorPID <= 0)
   continue;
  if (creatorPID != getpid())
  {
   if (kill(creatorPID, 0) == 0 || errno != ESRCH)
    continue;
  }







  semun.val = 0;
  if (semctl(semId, 0, IPC_RMID, semun) < 0)
   continue;




  semId = InternalIpcSemaphoreCreate(nextSemaKey, numSems + 1);
  if (semId >= 0)
   break;






 }







 IpcSemaphoreInitialize(semId, numSems, PGSemaMagic - 1);
 mysema.semId = semId;
 mysema.semNum = numSems;
 PGSemaphoreUnlock(&mysema);

 return semId;
}
