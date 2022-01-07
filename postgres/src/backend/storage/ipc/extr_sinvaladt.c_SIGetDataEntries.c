
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hasMessages; int resetState; int nextMsgNum; int signaled; } ;
struct TYPE_4__ {int maxMsgNum; int * buffer; int msgnumLock; TYPE_2__* procState; } ;
typedef int SharedInvalidationMessage ;
typedef TYPE_1__ SISeg ;
typedef TYPE_2__ ProcState ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 size_t MAXNUMMESSAGES ;
 int MyBackendId ;
 int SInvalReadLock ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* shmInvalBuffer ;

int
SIGetDataEntries(SharedInvalidationMessage *data, int datasize)
{
 SISeg *segP;
 ProcState *stateP;
 int max;
 int n;

 segP = shmInvalBuffer;
 stateP = &segP->procState[MyBackendId - 1];
 if (!stateP->hasMessages)
  return 0;

 LWLockAcquire(SInvalReadLock, LW_SHARED);
 stateP->hasMessages = 0;


 SpinLockAcquire(&segP->msgnumLock);
 max = segP->maxMsgNum;
 SpinLockRelease(&segP->msgnumLock);

 if (stateP->resetState)
 {





  stateP->nextMsgNum = max;
  stateP->resetState = 0;
  stateP->signaled = 0;
  LWLockRelease(SInvalReadLock);
  return -1;
 }
 n = 0;
 while (n < datasize && stateP->nextMsgNum < max)
 {
  data[n++] = segP->buffer[stateP->nextMsgNum % MAXNUMMESSAGES];
  stateP->nextMsgNum++;
 }
 if (stateP->nextMsgNum >= max)
  stateP->signaled = 0;
 else
  stateP->hasMessages = 1;

 LWLockRelease(SInvalReadLock);
 return n;
}
