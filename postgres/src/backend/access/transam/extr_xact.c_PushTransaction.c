
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionStateData ;
typedef TYPE_1__* TransactionState ;
struct TYPE_4__ {scalar_t__ parallelModeLevel; int prevXactReadOnly; int prevSecContext; int prevUser; int blockState; int state; int savepointLevel; int gucNestLevel; scalar_t__ nestingLevel; struct TYPE_4__* parent; scalar_t__ subTransactionId; int fullTransactionId; } ;


 TYPE_1__* CurrentTransactionState ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int GetUserIdAndSecContext (int *,int *) ;
 int InvalidFullTransactionId ;
 scalar_t__ InvalidSubTransactionId ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int NewGUCNestLevel () ;
 int TBLOCK_SUBBEGIN ;
 int TRANS_DEFAULT ;
 int TopTransactionContext ;
 int XactReadOnly ;
 scalar_t__ currentSubTransactionId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
PushTransaction(void)
{
 TransactionState p = CurrentTransactionState;
 TransactionState s;




 s = (TransactionState)
  MemoryContextAllocZero(TopTransactionContext,
          sizeof(TransactionStateData));




 currentSubTransactionId += 1;
 if (currentSubTransactionId == InvalidSubTransactionId)
 {
  currentSubTransactionId -= 1;
  pfree(s);
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("cannot have more than 2^32-1 subtransactions in a transaction")));
 }





 s->fullTransactionId = InvalidFullTransactionId;
 s->subTransactionId = currentSubTransactionId;
 s->parent = p;
 s->nestingLevel = p->nestingLevel + 1;
 s->gucNestLevel = NewGUCNestLevel();
 s->savepointLevel = p->savepointLevel;
 s->state = TRANS_DEFAULT;
 s->blockState = TBLOCK_SUBBEGIN;
 GetUserIdAndSecContext(&s->prevUser, &s->prevSecContext);
 s->prevXactReadOnly = XactReadOnly;
 s->parallelModeLevel = 0;

 CurrentTransactionState = s;







}
