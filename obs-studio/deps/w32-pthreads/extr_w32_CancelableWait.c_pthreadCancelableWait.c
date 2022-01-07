
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int INFINITE ;
 int ptw32_cancelable_wait (int ,int ) ;

int
pthreadCancelableWait (HANDLE waitHandle)
{
  return (ptw32_cancelable_wait (waitHandle, INFINITE));
}
