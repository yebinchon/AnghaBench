
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int cv ;
 char** error_string ;
 int mutex ;
 int printf (char*,char*) ;
 int pthread_cond_signal (int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int shared ;

void *
mythread(void * arg)
{
  int result = 0;

  assert(pthread_mutex_lock(&mutex) == 0);
  shared++;
  assert(pthread_mutex_unlock(&mutex) == 0);

  if ((result = pthread_cond_signal(&cv)) != 0)
    {
      printf("Error = %s\n", error_string[result]);
    }
  assert(result == 0);


  return (void *) 0;
}
