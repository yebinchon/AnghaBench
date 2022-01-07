
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_11__ {TYPE_3__* allPgXact; } ;
struct TYPE_10__ {size_t pgprocno; } ;
struct TYPE_9__ {int xmin; int xid; } ;
struct TYPE_8__ {TYPE_4__* proc; } ;
struct TYPE_7__ {int lastBackend; TYPE_2__* procState; } ;
typedef TYPE_1__ SISeg ;
typedef TYPE_2__ ProcState ;
typedef TYPE_3__ PGXACT ;
typedef TYPE_4__ PGPROC ;


 int InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_6__* ProcGlobal ;
 int SInvalWriteLock ;
 TYPE_1__* shmInvalBuffer ;

void
BackendIdGetTransactionIds(int backendID, TransactionId *xid, TransactionId *xmin)
{
 SISeg *segP = shmInvalBuffer;

 *xid = InvalidTransactionId;
 *xmin = InvalidTransactionId;


 LWLockAcquire(SInvalWriteLock, LW_SHARED);

 if (backendID > 0 && backendID <= segP->lastBackend)
 {
  ProcState *stateP = &segP->procState[backendID - 1];
  PGPROC *proc = stateP->proc;

  if (proc != ((void*)0))
  {
   PGXACT *xact = &ProcGlobal->allPgXact[proc->pgprocno];

   *xid = xact->xid;
   *xmin = xact->xmin;
  }
 }

 LWLockRelease(SInvalWriteLock);
}
