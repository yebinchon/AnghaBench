
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_9__ {size_t pgprocno; int recoveryConflictPending; int lxid; } ;
struct TYPE_8__ {int delayChkpt; scalar_t__ nxids; int overflowed; int vacuumFlags; int xmin; int xid; } ;
typedef TYPE_1__ PGXACT ;
typedef TYPE_2__ PGPROC ;


 int Assert (int) ;
 int InvalidLocalTransactionId ;
 int InvalidTransactionId ;
 scalar_t__ LWLockConditionalAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int PROC_VACUUM_STATE_MASK ;
 int ProcArrayEndTransactionInternal (TYPE_2__*,TYPE_1__*,int ) ;
 int ProcArrayGroupClearXid (TYPE_2__*,int ) ;
 int ProcArrayLock ;
 int TransactionIdIsValid (int ) ;
 TYPE_1__* allPgXact ;

void
ProcArrayEndTransaction(PGPROC *proc, TransactionId latestXid)
{
 PGXACT *pgxact = &allPgXact[proc->pgprocno];

 if (TransactionIdIsValid(latestXid))
 {






  Assert(TransactionIdIsValid(allPgXact[proc->pgprocno].xid));






  if (LWLockConditionalAcquire(ProcArrayLock, LW_EXCLUSIVE))
  {
   ProcArrayEndTransactionInternal(proc, pgxact, latestXid);
   LWLockRelease(ProcArrayLock);
  }
  else
   ProcArrayGroupClearXid(proc, latestXid);
 }
 else
 {





  Assert(!TransactionIdIsValid(allPgXact[proc->pgprocno].xid));

  proc->lxid = InvalidLocalTransactionId;
  pgxact->xmin = InvalidTransactionId;

  pgxact->vacuumFlags &= ~PROC_VACUUM_STATE_MASK;
  pgxact->delayChkpt = 0;
  proc->recoveryConflictPending = 0;

  Assert(pgxact->nxids == 0);
  Assert(pgxact->overflowed == 0);
 }
}
