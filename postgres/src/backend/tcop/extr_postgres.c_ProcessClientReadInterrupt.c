
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ DoingCommandRead ;
 int MyLatch ;
 scalar_t__ ProcDiePending ;
 int ProcessCatchupInterrupt () ;
 int ProcessNotifyInterrupt () ;
 int SetLatch (int ) ;
 scalar_t__ catchupInterruptPending ;
 int errno ;
 scalar_t__ notifyInterruptPending ;

void
ProcessClientReadInterrupt(bool blocked)
{
 int save_errno = errno;

 if (DoingCommandRead)
 {

  CHECK_FOR_INTERRUPTS();


  if (catchupInterruptPending)
   ProcessCatchupInterrupt();


  if (notifyInterruptPending)
   ProcessNotifyInterrupt();
 }
 else if (ProcDiePending)
 {
  if (blocked)
   CHECK_FOR_INTERRUPTS();
  else
   SetLatch(MyLatch);
 }

 errno = save_errno;
}
