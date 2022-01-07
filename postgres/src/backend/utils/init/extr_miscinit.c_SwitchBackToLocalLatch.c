
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int procLatch; } ;


 int Assert (int) ;
 scalar_t__ FeBeWaitSet ;
 int LocalLatchData ;
 int ModifyWaitEvent (scalar_t__,int,int ,int *) ;
 int * MyLatch ;
 TYPE_1__* MyProc ;
 int SetLatch (int *) ;
 int WL_LATCH_SET ;

void
SwitchBackToLocalLatch(void)
{
 Assert(MyLatch != &LocalLatchData);
 Assert(MyProc != ((void*)0) && MyLatch == &MyProc->procLatch);

 MyLatch = &LocalLatchData;

 if (FeBeWaitSet)
  ModifyWaitEvent(FeBeWaitSet, 1, WL_LATCH_SET, MyLatch);

 SetLatch(MyLatch);
}
