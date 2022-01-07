
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_8__ {int latestCompletedXid; } ;
struct TYPE_7__ {int recoveryConflictPending; int lxid; } ;
struct TYPE_6__ {int delayChkpt; int overflowed; scalar_t__ nxids; int vacuumFlags; void* xmin; void* xid; } ;
typedef TYPE_1__ PGXACT ;
typedef TYPE_2__ PGPROC ;


 int InvalidLocalTransactionId ;
 void* InvalidTransactionId ;
 int PROC_VACUUM_STATE_MASK ;
 TYPE_3__* ShmemVariableCache ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;

__attribute__((used)) static inline void
ProcArrayEndTransactionInternal(PGPROC *proc, PGXACT *pgxact,
        TransactionId latestXid)
{
 pgxact->xid = InvalidTransactionId;
 proc->lxid = InvalidLocalTransactionId;
 pgxact->xmin = InvalidTransactionId;

 pgxact->vacuumFlags &= ~PROC_VACUUM_STATE_MASK;
 pgxact->delayChkpt = 0;
 proc->recoveryConflictPending = 0;


 pgxact->nxids = 0;
 pgxact->overflowed = 0;


 if (TransactionIdPrecedes(ShmemVariableCache->latestCompletedXid,
         latestXid))
  ShmemVariableCache->latestCompletedXid = latestXid;
}
