
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ procPid; int resetState; int signaled; scalar_t__ nextMsgNum; int * proc; int nextLXID; } ;
struct TYPE_4__ {int lastBackend; TYPE_2__* procState; } ;
typedef TYPE_1__ SISeg ;
typedef TYPE_2__ ProcState ;
typedef int Datum ;


 int Assert (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MyBackendId ;
 int PointerIsValid (TYPE_1__*) ;
 int SInvalWriteLock ;
 int nextLocalTransactionId ;

__attribute__((used)) static void
CleanupInvalidationState(int status, Datum arg)
{
 SISeg *segP = (SISeg *) DatumGetPointer(arg);
 ProcState *stateP;
 int i;

 Assert(PointerIsValid(segP));

 LWLockAcquire(SInvalWriteLock, LW_EXCLUSIVE);

 stateP = &segP->procState[MyBackendId - 1];


 stateP->nextLXID = nextLocalTransactionId;


 stateP->procPid = 0;
 stateP->proc = ((void*)0);
 stateP->nextMsgNum = 0;
 stateP->resetState = 0;
 stateP->signaled = 0;


 for (i = segP->lastBackend; i > 0; i--)
 {
  if (segP->procState[i - 1].procPid != 0)
   break;
 }
 segP->lastBackend = i;

 LWLockRelease(SInvalWriteLock);
}
