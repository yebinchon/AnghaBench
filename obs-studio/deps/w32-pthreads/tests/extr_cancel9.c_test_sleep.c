
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_CANCEL_ASYNCHRONOUS ;
 int PTHREAD_CANCEL_ENABLE ;
 int Sleep (int) ;
 int pthread_setcancelstate (int ,int *) ;
 int pthread_setcanceltype (int ,int *) ;

void *
test_sleep (void *arg)
{
  pthread_setcancelstate (PTHREAD_CANCEL_ENABLE, ((void*)0));
  pthread_setcanceltype (PTHREAD_CANCEL_ASYNCHRONOUS, ((void*)0));

  Sleep (1000);
  return ((void*)0);

}
