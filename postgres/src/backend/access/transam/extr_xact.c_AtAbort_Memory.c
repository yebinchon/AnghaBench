
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MemoryContextSwitchTo (int *) ;
 int * TopMemoryContext ;
 int * TransactionAbortContext ;

__attribute__((used)) static void
AtAbort_Memory(void)
{
 if (TransactionAbortContext != ((void*)0))
  MemoryContextSwitchTo(TransactionAbortContext);
 else
  MemoryContextSwitchTo(TopMemoryContext);
}
