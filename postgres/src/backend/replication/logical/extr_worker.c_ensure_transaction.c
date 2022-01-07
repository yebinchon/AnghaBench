
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ApplyMessageContext ;
 scalar_t__ CurrentMemoryContext ;
 scalar_t__ IsTransactionState () ;
 int MemoryContextSwitchTo (scalar_t__) ;
 int SetCurrentStatementStartTimestamp () ;
 int StartTransactionCommand () ;
 int maybe_reread_subscription () ;

__attribute__((used)) static bool
ensure_transaction(void)
{
 if (IsTransactionState())
 {
  SetCurrentStatementStartTimestamp();

  if (CurrentMemoryContext != ApplyMessageContext)
   MemoryContextSwitchTo(ApplyMessageContext);

  return 0;
 }

 SetCurrentStatementStartTimestamp();
 StartTransactionCommand();

 maybe_reread_subscription();

 MemoryContextSwitchTo(ApplyMessageContext);
 return 1;
}
