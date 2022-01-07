
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_LOCKMETHOD ;
 int LockErrorCleanup () ;
 int LockReleaseAll (int ,int) ;
 int MyProc ;
 int USER_LOCKMETHOD ;

void
ProcReleaseLocks(bool isCommit)
{
 if (!MyProc)
  return;

 LockErrorCleanup();

 LockReleaseAll(DEFAULT_LOCKMETHOD, !isCommit);

 LockReleaseAll(USER_LOCKMETHOD, 0);
}
