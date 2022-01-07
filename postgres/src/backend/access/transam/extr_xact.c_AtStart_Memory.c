
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int * curTransactionContext; } ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (int ,char*,int,...) ;
 int Assert (int ) ;
 int * CurTransactionContext ;
 TYPE_1__* CurrentTransactionState ;
 int MemoryContextSwitchTo (int *) ;
 int TopMemoryContext ;
 int * TopTransactionContext ;
 int * TransactionAbortContext ;

__attribute__((used)) static void
AtStart_Memory(void)
{
 TransactionState s = CurrentTransactionState;
 if (TransactionAbortContext == ((void*)0))
  TransactionAbortContext =
   AllocSetContextCreate(TopMemoryContext,
          "TransactionAbortContext",
          32 * 1024,
          32 * 1024,
          32 * 1024);




 Assert(TopTransactionContext == ((void*)0));




 TopTransactionContext =
  AllocSetContextCreate(TopMemoryContext,
         "TopTransactionContext",
         ALLOCSET_DEFAULT_SIZES);





 CurTransactionContext = TopTransactionContext;
 s->curTransactionContext = CurTransactionContext;


 MemoryContextSwitchTo(CurTransactionContext);
}
