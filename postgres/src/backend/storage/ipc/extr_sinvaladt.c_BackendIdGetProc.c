
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * proc; } ;
struct TYPE_4__ {int lastBackend; TYPE_2__* procState; } ;
typedef TYPE_1__ SISeg ;
typedef TYPE_2__ ProcState ;
typedef int PGPROC ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int SInvalWriteLock ;
 TYPE_1__* shmInvalBuffer ;

PGPROC *
BackendIdGetProc(int backendID)
{
 PGPROC *result = ((void*)0);
 SISeg *segP = shmInvalBuffer;


 LWLockAcquire(SInvalWriteLock, LW_SHARED);

 if (backendID > 0 && backendID <= segP->lastBackend)
 {
  ProcState *stateP = &segP->procState[backendID - 1];

  result = stateP->proc;
 }

 LWLockRelease(SInvalWriteLock);

 return result;
}
