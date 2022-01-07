
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int MemoryContextSwitchTo (int *) ;
 int * TransactionAbortContext ;

__attribute__((used)) static void
AtSubAbort_Memory(void)
{
 Assert(TransactionAbortContext != ((void*)0));

 MemoryContextSwitchTo(TransactionAbortContext);
}
