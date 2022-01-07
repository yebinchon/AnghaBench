
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ blockState; } ;


 int Assert (int) ;
 int CommitTransaction () ;
 TYPE_1__* CurrentTransactionState ;
 scalar_t__ TBLOCK_DEFAULT ;
 scalar_t__ TBLOCK_PARALLEL_INPROGRESS ;

void
EndParallelWorkerTransaction(void)
{
 Assert(CurrentTransactionState->blockState == TBLOCK_PARALLEL_INPROGRESS);
 CommitTransaction();
 CurrentTransactionState->blockState = TBLOCK_DEFAULT;
}
