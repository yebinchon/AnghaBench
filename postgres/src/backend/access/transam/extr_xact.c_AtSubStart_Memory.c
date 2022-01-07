
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int * curTransactionContext; } ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int *,char*,int ) ;
 int Assert (int ) ;
 int * CurTransactionContext ;
 TYPE_1__* CurrentTransactionState ;
 int MemoryContextSwitchTo (int *) ;

__attribute__((used)) static void
AtSubStart_Memory(void)
{
 TransactionState s = CurrentTransactionState;

 Assert(CurTransactionContext != ((void*)0));






 CurTransactionContext = AllocSetContextCreate(CurTransactionContext,
              "CurTransactionContext",
              ALLOCSET_DEFAULT_SIZES);
 s->curTransactionContext = CurTransactionContext;


 MemoryContextSwitchTo(CurTransactionContext);
}
