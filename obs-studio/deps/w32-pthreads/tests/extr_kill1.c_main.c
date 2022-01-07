
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int assert (int) ;
 scalar_t__ pthread_kill (int ,int) ;
 int pthread_self () ;

int
main()
{
  assert(pthread_kill(pthread_self(), 1) == EINVAL);

  return 0;
}
