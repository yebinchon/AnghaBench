
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* TransactionState ;
struct TYPE_5__ {int * curTransactionContext; TYPE_1__* parent; } ;
struct TYPE_4__ {int curTransactionContext; } ;


 int Assert (int ) ;
 int CurTransactionContext ;
 TYPE_2__* CurrentTransactionState ;
 int MemoryContextDelete (int *) ;
 int MemoryContextResetAndDeleteChildren (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int * TransactionAbortContext ;

__attribute__((used)) static void
AtSubCleanup_Memory(void)
{
 TransactionState s = CurrentTransactionState;

 Assert(s->parent != ((void*)0));


 MemoryContextSwitchTo(s->parent->curTransactionContext);
 CurTransactionContext = s->parent->curTransactionContext;




 if (TransactionAbortContext != ((void*)0))
  MemoryContextResetAndDeleteChildren(TransactionAbortContext);






 if (s->curTransactionContext)
  MemoryContextDelete(s->curTransactionContext);
 s->curTransactionContext = ((void*)0);
}
