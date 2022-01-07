
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t pgprocno; int recoveryConflictPending; int lxid; } ;
struct TYPE_5__ {int delayChkpt; int overflowed; scalar_t__ nxids; int vacuumFlags; void* xmin; void* xid; } ;
typedef TYPE_1__ PGXACT ;
typedef TYPE_2__ PGPROC ;


 int InvalidLocalTransactionId ;
 void* InvalidTransactionId ;
 int PROC_VACUUM_STATE_MASK ;
 TYPE_1__* allPgXact ;

void
ProcArrayClearTransaction(PGPROC *proc)
{
 PGXACT *pgxact = &allPgXact[proc->pgprocno];







 pgxact->xid = InvalidTransactionId;
 proc->lxid = InvalidLocalTransactionId;
 pgxact->xmin = InvalidTransactionId;
 proc->recoveryConflictPending = 0;


 pgxact->vacuumFlags &= ~PROC_VACUUM_STATE_MASK;
 pgxact->delayChkpt = 0;


 pgxact->nxids = 0;
 pgxact->overflowed = 0;
}
