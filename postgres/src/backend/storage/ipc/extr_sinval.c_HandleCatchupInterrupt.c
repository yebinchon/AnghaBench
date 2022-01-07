
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MyLatch ;
 int SetLatch (int ) ;
 int catchupInterruptPending ;

void
HandleCatchupInterrupt(void)
{





 catchupInterruptPending = 1;


 SetLatch(MyLatch);
}
