
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IdleInTransactionSessionTimeoutPending ;
 int InterruptPending ;
 int MyLatch ;
 int SetLatch (int ) ;

__attribute__((used)) static void
IdleInTransactionSessionTimeoutHandler(void)
{
 IdleInTransactionSessionTimeoutPending = 1;
 InterruptPending = 1;
 SetLatch(MyLatch);
}
