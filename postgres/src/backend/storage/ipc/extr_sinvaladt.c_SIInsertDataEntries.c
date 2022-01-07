
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hasMessages; } ;
struct TYPE_4__ {int maxMsgNum; int minMsgNum; int nextThreshold; int lastBackend; TYPE_2__* procState; int msgnumLock; int * buffer; } ;
typedef int SharedInvalidationMessage ;
typedef TYPE_1__ SISeg ;
typedef TYPE_2__ ProcState ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXNUMMESSAGES ;
 int Min (int,int ) ;
 int SICleanupQueue (int,int) ;
 int SInvalWriteLock ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WRITE_QUANTUM ;
 TYPE_1__* shmInvalBuffer ;

void
SIInsertDataEntries(const SharedInvalidationMessage *data, int n)
{
 SISeg *segP = shmInvalBuffer;
 while (n > 0)
 {
  int nthistime = Min(n, WRITE_QUANTUM);
  int numMsgs;
  int max;
  int i;

  n -= nthistime;

  LWLockAcquire(SInvalWriteLock, LW_EXCLUSIVE);
  for (;;)
  {
   numMsgs = segP->maxMsgNum - segP->minMsgNum;
   if (numMsgs + nthistime > MAXNUMMESSAGES ||
    numMsgs >= segP->nextThreshold)
    SICleanupQueue(1, nthistime);
   else
    break;
  }




  max = segP->maxMsgNum;
  while (nthistime-- > 0)
  {
   segP->buffer[max % MAXNUMMESSAGES] = *data++;
   max++;
  }


  SpinLockAcquire(&segP->msgnumLock);
  segP->maxMsgNum = max;
  SpinLockRelease(&segP->msgnumLock);
  for (i = 0; i < segP->lastBackend; i++)
  {
   ProcState *stateP = &segP->procState[i];

   stateP->hasMessages = 1;
  }

  LWLockRelease(SInvalWriteLock);
 }
}
