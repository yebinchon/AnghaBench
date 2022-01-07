
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MyLatch ;
 int SetLatch (int ) ;
 int errno ;
 int got_deadlock_timeout ;

void
CheckDeadLockAlert(void)
{
 int save_errno = errno;

 got_deadlock_timeout = 1;






 SetLatch(MyLatch);
 errno = save_errno;
}
