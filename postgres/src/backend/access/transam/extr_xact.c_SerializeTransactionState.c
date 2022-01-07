
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
typedef int TransactionId ;
struct TYPE_5__ {int nParallelCurrentXids; int * parallelCurrentXids; int currentCommandId; int currentFullTransactionId; int topFullTransactionId; int xactDeferrable; int xactIsoLevel; } ;
struct TYPE_4__ {int nChildXids; int * childXids; int fullTransactionId; struct TYPE_4__* parent; } ;
typedef int Size ;
typedef TYPE_2__ SerializedTransactionState ;


 int Assert (int) ;
 TYPE_1__* CurrentTransactionState ;
 scalar_t__ FullTransactionIdIsValid (int ) ;
 int * ParallelCurrentXids ;
 int SerializedTransactionStateHeaderSize ;
 int XactDeferrable ;
 int XactIsoLevel ;
 int XactTopFullTransactionId ;
 int XidFromFullTransactionId (int ) ;
 int add_size (int,int) ;
 int currentCommandId ;
 int memcpy (int *,int *,int) ;
 int nParallelCurrentXids ;
 int * palloc (int) ;
 int qsort (int *,int,int,int ) ;
 int xidComparator ;

void
SerializeTransactionState(Size maxsize, char *start_address)
{
 TransactionState s;
 Size nxids = 0;
 Size i = 0;
 TransactionId *workspace;
 SerializedTransactionState *result;

 result = (SerializedTransactionState *) start_address;

 result->xactIsoLevel = XactIsoLevel;
 result->xactDeferrable = XactDeferrable;
 result->topFullTransactionId = XactTopFullTransactionId;
 result->currentFullTransactionId =
  CurrentTransactionState->fullTransactionId;
 result->currentCommandId = currentCommandId;






 if (nParallelCurrentXids > 0)
 {
  result->nParallelCurrentXids = nParallelCurrentXids;
  memcpy(&result->parallelCurrentXids[0], ParallelCurrentXids,
      nParallelCurrentXids * sizeof(TransactionId));
  return;
 }





 for (s = CurrentTransactionState; s != ((void*)0); s = s->parent)
 {
  if (FullTransactionIdIsValid(s->fullTransactionId))
   nxids = add_size(nxids, 1);
  nxids = add_size(nxids, s->nChildXids);
 }
 Assert(SerializedTransactionStateHeaderSize + nxids * sizeof(TransactionId)
     <= maxsize);


 workspace = palloc(nxids * sizeof(TransactionId));
 for (s = CurrentTransactionState; s != ((void*)0); s = s->parent)
 {
  if (FullTransactionIdIsValid(s->fullTransactionId))
   workspace[i++] = XidFromFullTransactionId(s->fullTransactionId);
  memcpy(&workspace[i], s->childXids,
      s->nChildXids * sizeof(TransactionId));
  i += s->nChildXids;
 }
 Assert(i == nxids);


 qsort(workspace, nxids, sizeof(TransactionId), xidComparator);


 result->nParallelCurrentXids = nxids;
 memcpy(&result->parallelCurrentXids[0], workspace,
     nxids * sizeof(TransactionId));
}
