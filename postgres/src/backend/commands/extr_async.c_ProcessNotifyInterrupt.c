
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsTransactionOrTransactionBlock () ;
 int ProcessIncomingNotify () ;
 scalar_t__ notifyInterruptPending ;

void
ProcessNotifyInterrupt(void)
{
 if (IsTransactionOrTransactionBlock())
  return;

 while (notifyInterruptPending)
  ProcessIncomingNotify();
}
