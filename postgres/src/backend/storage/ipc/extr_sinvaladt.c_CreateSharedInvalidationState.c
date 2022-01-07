
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int maxBackends; TYPE_1__* procState; int msgnumLock; scalar_t__ lastBackend; int nextThreshold; scalar_t__ maxMsgNum; scalar_t__ minMsgNum; } ;
struct TYPE_4__ {int resetState; int signaled; int hasMessages; int nextLXID; scalar_t__ nextMsgNum; int * proc; scalar_t__ procPid; } ;
typedef TYPE_2__ SISeg ;


 int CLEANUP_MIN ;
 int InvalidLocalTransactionId ;
 int MaxBackends ;
 int SInvalShmemSize () ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int SpinLockInit (int *) ;
 TYPE_2__* shmInvalBuffer ;

void
CreateSharedInvalidationState(void)
{
 int i;
 bool found;


 shmInvalBuffer = (SISeg *)
  ShmemInitStruct("shmInvalBuffer", SInvalShmemSize(), &found);
 if (found)
  return;


 shmInvalBuffer->minMsgNum = 0;
 shmInvalBuffer->maxMsgNum = 0;
 shmInvalBuffer->nextThreshold = CLEANUP_MIN;
 shmInvalBuffer->lastBackend = 0;
 shmInvalBuffer->maxBackends = MaxBackends;
 SpinLockInit(&shmInvalBuffer->msgnumLock);




 for (i = 0; i < shmInvalBuffer->maxBackends; i++)
 {
  shmInvalBuffer->procState[i].procPid = 0;
  shmInvalBuffer->procState[i].proc = ((void*)0);
  shmInvalBuffer->procState[i].nextMsgNum = 0;
  shmInvalBuffer->procState[i].resetState = 0;
  shmInvalBuffer->procState[i].signaled = 0;
  shmInvalBuffer->procState[i].hasMessages = 0;
  shmInvalBuffer->procState[i].nextLXID = InvalidLocalTransactionId;
 }
}
