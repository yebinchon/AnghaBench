
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterruptPending ;
 int MyLatch ;
 int ParallelMessagePending ;
 int SetLatch (int ) ;

void
HandleParallelMessageInterrupt(void)
{
 InterruptPending = 1;
 ParallelMessagePending = 1;
 SetLatch(MyLatch);
}
