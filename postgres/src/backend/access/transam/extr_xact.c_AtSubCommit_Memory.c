
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
 scalar_t__ MemoryContextIsEmpty (int *) ;
 int MemoryContextSwitchTo (int ) ;

__attribute__((used)) static void
AtSubCommit_Memory(void)
{
 TransactionState s = CurrentTransactionState;

 Assert(s->parent != ((void*)0));


 CurTransactionContext = s->parent->curTransactionContext;
 MemoryContextSwitchTo(CurTransactionContext);







 if (MemoryContextIsEmpty(s->curTransactionContext))
 {
  MemoryContextDelete(s->curTransactionContext);
  s->curTransactionContext = ((void*)0);
 }
}
