
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_5__ {int nextMsgNum; scalar_t__ procPid; int resetState; int signaled; scalar_t__ sendOnly; } ;
struct TYPE_4__ {int maxMsgNum; int lastBackend; int minMsgNum; int nextThreshold; TYPE_2__* procState; } ;
typedef TYPE_1__ SISeg ;
typedef TYPE_2__ ProcState ;
typedef int BackendId ;


 int CLEANUP_MIN ;
 int CLEANUP_QUANTUM ;
 int DEBUG4 ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXNUMMESSAGES ;
 int MSGNUMWRAPAROUND ;
 int PROCSIG_CATCHUP_INTERRUPT ;
 int SIG_THRESHOLD ;
 int SInvalReadLock ;
 int SInvalWriteLock ;
 int SendProcSignal (scalar_t__,int ,int) ;
 int elog (int ,char*,int) ;
 TYPE_1__* shmInvalBuffer ;

void
SICleanupQueue(bool callerHasWriteLock, int minFree)
{
 SISeg *segP = shmInvalBuffer;
 int min,
    minsig,
    lowbound,
    numMsgs,
    i;
 ProcState *needSig = ((void*)0);


 if (!callerHasWriteLock)
  LWLockAcquire(SInvalWriteLock, LW_EXCLUSIVE);
 LWLockAcquire(SInvalReadLock, LW_EXCLUSIVE);
 min = segP->maxMsgNum;
 minsig = min - SIG_THRESHOLD;
 lowbound = min - MAXNUMMESSAGES + minFree;

 for (i = 0; i < segP->lastBackend; i++)
 {
  ProcState *stateP = &segP->procState[i];
  int n = stateP->nextMsgNum;


  if (stateP->procPid == 0 || stateP->resetState || stateP->sendOnly)
   continue;





  if (n < lowbound)
  {
   stateP->resetState = 1;

   continue;
  }


  if (n < min)
   min = n;


  if (n < minsig && !stateP->signaled)
  {
   minsig = n;
   needSig = stateP;
  }
 }
 segP->minMsgNum = min;






 if (min >= MSGNUMWRAPAROUND)
 {
  segP->minMsgNum -= MSGNUMWRAPAROUND;
  segP->maxMsgNum -= MSGNUMWRAPAROUND;
  for (i = 0; i < segP->lastBackend; i++)
  {

   segP->procState[i].nextMsgNum -= MSGNUMWRAPAROUND;
  }
 }





 numMsgs = segP->maxMsgNum - segP->minMsgNum;
 if (numMsgs < CLEANUP_MIN)
  segP->nextThreshold = CLEANUP_MIN;
 else
  segP->nextThreshold = (numMsgs / CLEANUP_QUANTUM + 1) * CLEANUP_QUANTUM;






 if (needSig)
 {
  pid_t his_pid = needSig->procPid;
  BackendId his_backendId = (needSig - &segP->procState[0]) + 1;

  needSig->signaled = 1;
  LWLockRelease(SInvalReadLock);
  LWLockRelease(SInvalWriteLock);
  elog(DEBUG4, "sending sinval catchup signal to PID %d", (int) his_pid);
  SendProcSignal(his_pid, PROCSIG_CATCHUP_INTERRUPT, his_backendId);
  if (callerHasWriteLock)
   LWLockAcquire(SInvalWriteLock, LW_EXCLUSIVE);
 }
 else
 {
  LWLockRelease(SInvalReadLock);
  if (!callerHasWriteLock)
   LWLockRelease(SInvalWriteLock);
 }
}
