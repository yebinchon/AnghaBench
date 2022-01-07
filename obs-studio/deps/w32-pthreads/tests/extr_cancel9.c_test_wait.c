
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;


 int CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int PTHREAD_CANCEL_ASYNCHRONOUS ;
 int PTHREAD_CANCEL_ENABLE ;
 int WaitForSingleObject (int ,int) ;
 int pthread_setcancelstate (int ,int *) ;
 int pthread_setcanceltype (int ,int *) ;

void *
test_wait (void *arg)
{
  HANDLE hEvent;
  DWORD dwEvent;

  pthread_setcancelstate (PTHREAD_CANCEL_ENABLE, ((void*)0));
  pthread_setcanceltype (PTHREAD_CANCEL_ASYNCHRONOUS, ((void*)0));

  hEvent = CreateEvent (((void*)0), FALSE, FALSE, ((void*)0));

  dwEvent = WaitForSingleObject (hEvent, 1000);

  return ((void*)0);
}
