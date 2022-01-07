
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGPROC ;


 int * BackendPidGetProcWithLock (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;

PGPROC *
BackendPidGetProc(int pid)
{
 PGPROC *result;

 if (pid == 0)
  return ((void*)0);

 LWLockAcquire(ProcArrayLock, LW_SHARED);

 result = BackendPidGetProcWithLock(pid);

 LWLockRelease(ProcArrayLock);

 return result;
}
