
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {scalar_t__ blockState; scalar_t__ state; } ;


 int Assert (int) ;
 int BlockStateAsString (scalar_t__) ;
 int CommitSubTransaction () ;
 int CurTransactionContext ;
 TYPE_1__* CurrentTransactionState ;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERROR ;
 scalar_t__ IsInParallelMode () ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ TBLOCK_SUBINPROGRESS ;
 scalar_t__ TRANS_INPROGRESS ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
ReleaseCurrentSubTransaction(void)
{
 TransactionState s = CurrentTransactionState;
 if (IsInParallelMode())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
     errmsg("cannot commit subtransactions during a parallel operation")));

 if (s->blockState != TBLOCK_SUBINPROGRESS)
  elog(ERROR, "ReleaseCurrentSubTransaction: unexpected state %s",
    BlockStateAsString(s->blockState));
 Assert(s->state == TRANS_INPROGRESS);
 MemoryContextSwitchTo(CurTransactionContext);
 CommitSubTransaction();
 s = CurrentTransactionState;
 Assert(s->state == TRANS_INPROGRESS);
}
