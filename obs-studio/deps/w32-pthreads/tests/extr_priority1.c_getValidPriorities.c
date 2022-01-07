
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int HANDLE ;


 int GetThreadPriority (int ) ;
 int PTW32TEST_MAXPRIORITIES ;
 int SetThreadPriority (int ,int) ;
 int THREAD_PRIORITY_HIGHEST ;
 int THREAD_PRIORITY_LOWEST ;
 int maxPrio ;
 int minPrio ;
 int printf (char*,...) ;
 int pthread_getw32threadhandle_np (int ) ;
 int pthread_self () ;
 int* validPriorities ;

void *
getValidPriorities(void * arg)
{
  int prioSet;
  pthread_t threadID = pthread_self();
  HANDLE threadH = pthread_getw32threadhandle_np(threadID);

  printf("Using GetThreadPriority\n");
  printf("%10s %10s\n", "Set value", "Get value");

  for (prioSet = minPrio;
       prioSet <= maxPrio;
       prioSet++)
    {





        if (prioSet < 0)
   SetThreadPriority(threadH, THREAD_PRIORITY_LOWEST);
        else
   SetThreadPriority(threadH, THREAD_PRIORITY_HIGHEST);
 SetThreadPriority(threadH, prioSet);
 validPriorities[prioSet+(PTW32TEST_MAXPRIORITIES/2)] = GetThreadPriority(threadH);
 printf("%10d %10d\n", prioSet, validPriorities[prioSet+(PTW32TEST_MAXPRIORITIES/2)]);
    }

  return (void *) 0;
}
