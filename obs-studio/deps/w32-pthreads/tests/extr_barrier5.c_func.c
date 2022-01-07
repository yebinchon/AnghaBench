
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPLONG ;
typedef scalar_t__ LONG ;


 scalar_t__ InterlockedIncrement (int ) ;
 int PTHREAD_BARRIER_SERIAL_THREAD ;
 int barrier ;
 char** error_string ;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int pthread_barrier_wait (int *) ;
 int stdout ;
 int totalThreadCrossings ;

void *
func(void * crossings)
{
  int result;
  int serialThreads = 0;

  while ((LONG)(size_t)crossings >= (LONG)InterlockedIncrement((LPLONG)&totalThreadCrossings))
    {
      result = pthread_barrier_wait(&barrier);

      if (result == PTHREAD_BARRIER_SERIAL_THREAD)
        {
          serialThreads++;
        }
      else if (result != 0)
        {
          printf("Barrier failed: result = %s\n", error_string[result]);
          fflush(stdout);
          return ((void*)0);
        }
    }

  return (void*)(size_t)serialThreads;
}
