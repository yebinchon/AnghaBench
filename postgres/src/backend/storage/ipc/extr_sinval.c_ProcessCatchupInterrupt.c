
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AcceptInvalidationMessages () ;
 int CommitTransactionCommand () ;
 int DEBUG4 ;
 scalar_t__ IsTransactionOrTransactionBlock () ;
 int StartTransactionCommand () ;
 scalar_t__ catchupInterruptPending ;
 int elog (int ,char*) ;

void
ProcessCatchupInterrupt(void)
{
 while (catchupInterruptPending)
 {
  if (IsTransactionOrTransactionBlock())
  {
   elog(DEBUG4, "ProcessCatchupEvent inside transaction");
   AcceptInvalidationMessages();
  }
  else
  {
   elog(DEBUG4, "ProcessCatchupEvent outside transaction");
   StartTransactionCommand();
   CommitTransactionCommand();
  }
 }
}
