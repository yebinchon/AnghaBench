
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_0; long member_1; } ;


 int assert (int) ;
 int mx ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,int *) ;
 scalar_t__ pthread_delay_np (struct timespec*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock ;

void *
func(void * arg)
{
  struct timespec interval = {5, 500000000L};

  assert(pthread_mutex_lock(&mx) == 0);




  pthread_cleanup_push(pthread_mutex_unlock, &mx);
  assert(pthread_delay_np(&interval) == 0);
  pthread_cleanup_pop(1);




  return (void *)(size_t)1;
}
