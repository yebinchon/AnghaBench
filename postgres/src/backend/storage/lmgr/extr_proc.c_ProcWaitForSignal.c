
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int CHECK_FOR_INTERRUPTS () ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int ,int ) ;

void
ProcWaitForSignal(uint32 wait_event_info)
{
 (void) WaitLatch(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
      wait_event_info);
 ResetLatch(MyLatch);
 CHECK_FOR_INTERRUPTS();
}
