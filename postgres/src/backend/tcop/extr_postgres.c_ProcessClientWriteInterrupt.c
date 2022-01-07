
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ CritSectionCount ;
 scalar_t__ DestNone ;
 scalar_t__ DestRemote ;
 scalar_t__ InterruptHoldoffCount ;
 int MyLatch ;
 scalar_t__ ProcDiePending ;
 int SetLatch (int ) ;
 int errno ;
 scalar_t__ whereToSendOutput ;

void
ProcessClientWriteInterrupt(bool blocked)
{
 int save_errno = errno;

 if (ProcDiePending)
 {
  if (blocked)
  {




   if (InterruptHoldoffCount == 0 && CritSectionCount == 0)
   {






    if (whereToSendOutput == DestRemote)
     whereToSendOutput = DestNone;

    CHECK_FOR_INTERRUPTS();
   }
  }
  else
   SetLatch(MyLatch);
 }

 errno = save_errno;
}
