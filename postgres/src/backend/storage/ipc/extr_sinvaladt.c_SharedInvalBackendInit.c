
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int backendId; } ;
struct TYPE_7__ {scalar_t__ procPid; int resetState; int signaled; int hasMessages; int sendOnly; int nextMsgNum; TYPE_5__* proc; int nextLXID; } ;
struct TYPE_6__ {int lastBackend; int maxBackends; int maxMsgNum; TYPE_2__* procState; } ;
typedef TYPE_1__ SISeg ;
typedef TYPE_2__ ProcState ;


 int Assert (int) ;
 int CleanupInvalidationState ;
 int DEBUG4 ;
 int ERRCODE_TOO_MANY_CONNECTIONS ;
 int FATAL ;
 int InvalidBackendId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MyBackendId ;
 TYPE_5__* MyProc ;
 scalar_t__ MyProcPid ;
 int PointerGetDatum (TYPE_1__*) ;
 int SInvalWriteLock ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int nextLocalTransactionId ;
 int on_shmem_exit (int ,int ) ;
 TYPE_1__* shmInvalBuffer ;

void
SharedInvalBackendInit(bool sendOnly)
{
 int index;
 ProcState *stateP = ((void*)0);
 SISeg *segP = shmInvalBuffer;






 LWLockAcquire(SInvalWriteLock, LW_EXCLUSIVE);


 for (index = 0; index < segP->lastBackend; index++)
 {
  if (segP->procState[index].procPid == 0)
  {
   stateP = &segP->procState[index];
   break;
  }
 }

 if (stateP == ((void*)0))
 {
  if (segP->lastBackend < segP->maxBackends)
  {
   stateP = &segP->procState[segP->lastBackend];
   Assert(stateP->procPid == 0);
   segP->lastBackend++;
  }
  else
  {



   MyBackendId = InvalidBackendId;
   LWLockRelease(SInvalWriteLock);
   ereport(FATAL,
     (errcode(ERRCODE_TOO_MANY_CONNECTIONS),
      errmsg("sorry, too many clients already")));
  }
 }

 MyBackendId = (stateP - &segP->procState[0]) + 1;


 MyProc->backendId = MyBackendId;


 nextLocalTransactionId = stateP->nextLXID;


 stateP->procPid = MyProcPid;
 stateP->proc = MyProc;
 stateP->nextMsgNum = segP->maxMsgNum;
 stateP->resetState = 0;
 stateP->signaled = 0;
 stateP->hasMessages = 0;
 stateP->sendOnly = sendOnly;

 LWLockRelease(SInvalWriteLock);


 on_shmem_exit(CleanupInvalidationState, PointerGetDatum(segP));

 elog(DEBUG4, "my backend ID is %d", MyBackendId);
}
