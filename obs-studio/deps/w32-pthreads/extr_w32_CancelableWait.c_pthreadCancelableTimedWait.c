
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;


 int ptw32_cancelable_wait (int ,int ) ;

int
pthreadCancelableTimedWait (HANDLE waitHandle, DWORD timeout)
{
  return (ptw32_cancelable_wait (waitHandle, timeout));
}
