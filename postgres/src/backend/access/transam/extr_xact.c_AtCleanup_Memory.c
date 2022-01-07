
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * curTransactionContext; int * parent; } ;


 int Assert (int ) ;
 int * CurTransactionContext ;
 TYPE_1__* CurrentTransactionState ;
 int MemoryContextDelete (int *) ;
 int MemoryContextResetAndDeleteChildren (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int TopMemoryContext ;
 int * TopTransactionContext ;
 int * TransactionAbortContext ;

__attribute__((used)) static void
AtCleanup_Memory(void)
{
 Assert(CurrentTransactionState->parent == ((void*)0));





 MemoryContextSwitchTo(TopMemoryContext);




 if (TransactionAbortContext != ((void*)0))
  MemoryContextResetAndDeleteChildren(TransactionAbortContext);




 if (TopTransactionContext != ((void*)0))
  MemoryContextDelete(TopTransactionContext);
 TopTransactionContext = ((void*)0);
 CurTransactionContext = ((void*)0);
 CurrentTransactionState->curTransactionContext = ((void*)0);
}
