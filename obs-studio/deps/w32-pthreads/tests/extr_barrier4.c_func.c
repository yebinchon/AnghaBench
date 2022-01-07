
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_BARRIER_SERIAL_THREAD ;
 int assert (int) ;
 int barrier ;
 char** error_string ;
 int fflush (int ) ;
 int mx ;
 int otherThreadCount ;
 int printf (char*,char*) ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int serialThreadCount ;
 int stdout ;

void *
func(void * arg)
{
  int result = pthread_barrier_wait(&barrier);

  assert(pthread_mutex_lock(&mx) == 0);

  if (result == PTHREAD_BARRIER_SERIAL_THREAD)
    {
      serialThreadCount++;
    }
  else if (0 == result)
    {
      otherThreadCount++;
    }
  else
    {
      printf("Barrier wait failed: error = %s\n", error_string[result]);
      fflush(stdout);
      return ((void*)0);
    }
  assert(pthread_mutex_unlock(&mx) == 0);

  return ((void*)0);
}
