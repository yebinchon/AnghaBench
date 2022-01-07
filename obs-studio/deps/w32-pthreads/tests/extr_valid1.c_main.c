
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ ESRCH ;
 int assert (int) ;
 int func ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,void**) ;
 scalar_t__ pthread_kill (int ,int ) ;
 int sched_yield () ;
 int washere ;

int
main()
{
  pthread_t t;
  void * result = ((void*)0);

  washere = 0;
  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);
  assert(pthread_join(t, &result) == 0);
  assert((int)(size_t)result == 0);
  assert(washere == 1);
  sched_yield();
  assert(pthread_kill(t, 0) == ESRCH);

  return 0;
}
