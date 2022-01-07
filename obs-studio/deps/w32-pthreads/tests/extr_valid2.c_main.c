
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ ESRCH ;
 int PTW32_THREAD_NULL_ID ;
 int assert (int) ;
 scalar_t__ pthread_kill (int ,int ) ;

int
main()
{
  pthread_t NullThread = PTW32_THREAD_NULL_ID;

  assert(pthread_kill(NullThread, 0) == ESRCH);

  return 0;
}
