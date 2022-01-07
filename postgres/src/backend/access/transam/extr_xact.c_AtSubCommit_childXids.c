
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* TransactionState ;
typedef int TransactionId ;
struct TYPE_5__ {int nChildXids; scalar_t__ maxChildXids; int * childXids; TYPE_1__* parent; int fullTransactionId; } ;
struct TYPE_4__ {int nChildXids; int maxChildXids; int * childXids; } ;


 int Assert (int ) ;
 TYPE_2__* CurrentTransactionState ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int MaxAllocSize ;
 int * MemoryContextAlloc (int ,int) ;
 int Min (int,int) ;
 int TopTransactionContext ;
 int XidFromFullTransactionId (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int memcpy (int *,int *,int) ;
 int pfree (int *) ;
 int * repalloc (int *,int) ;

__attribute__((used)) static void
AtSubCommit_childXids(void)
{
 TransactionState s = CurrentTransactionState;
 int new_nChildXids;

 Assert(s->parent != ((void*)0));





 new_nChildXids = s->parent->nChildXids + s->nChildXids + 1;


 if (s->parent->maxChildXids < new_nChildXids)
 {
  int new_maxChildXids;
  TransactionId *new_childXids;







  new_maxChildXids = Min(new_nChildXids * 2,
          (int) (MaxAllocSize / sizeof(TransactionId)));

  if (new_maxChildXids < new_nChildXids)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("maximum number of committed subtransactions (%d) exceeded",
       (int) (MaxAllocSize / sizeof(TransactionId)))));






  if (s->parent->childXids == ((void*)0))
   new_childXids =
    MemoryContextAlloc(TopTransactionContext,
           new_maxChildXids * sizeof(TransactionId));
  else
   new_childXids = repalloc(s->parent->childXids,
          new_maxChildXids * sizeof(TransactionId));

  s->parent->childXids = new_childXids;
  s->parent->maxChildXids = new_maxChildXids;
 }
 s->parent->childXids[s->parent->nChildXids] = XidFromFullTransactionId(s->fullTransactionId);

 if (s->nChildXids > 0)
  memcpy(&s->parent->childXids[s->parent->nChildXids + 1],
      s->childXids,
      s->nChildXids * sizeof(TransactionId));

 s->parent->nChildXids = new_nChildXids;


 if (s->childXids != ((void*)0))
  pfree(s->childXids);

 s->childXids = ((void*)0);
 s->nChildXids = 0;
 s->maxChildXids = 0;
}
