
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * p; } ;
struct TYPE_4__ {int started; int threadnum; int count; TYPE_2__ self; } ;
typedef int LPDWORD ;
typedef scalar_t__ HANDLE ;


 scalar_t__ ESRCH ;
 scalar_t__ GetExitCodeThread (scalar_t__,int ) ;
 int NUMTHREADS ;
 scalar_t__ PTHREAD_CANCELED ;
 int Sleep (int) ;
 scalar_t__ TRUE ;
 int Win32thread ;
 scalar_t__ _beginthread (int ,int ,void*) ;
 scalar_t__ _beginthreadex (int *,int ,int ,void*,int ,unsigned int*) ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,...) ;
 scalar_t__ pthread_cancel (TYPE_2__) ;
 scalar_t__ pthread_kill (TYPE_2__,int ) ;
 int stderr ;
 TYPE_1__* threadbag ;

int
main()
{
  int failed = 0;
  int i;
  HANDLE h[NUMTHREADS + 1];
  unsigned thrAddr;

  for (i = 1; i <= NUMTHREADS; i++)
    {
      threadbag[i].started = 0;
      threadbag[i].threadnum = i;

      h[i] = (HANDLE) _beginthreadex(((void*)0), 0, Win32thread, (void *) &threadbag[i], 0, &thrAddr);



    }




  Sleep(500);




  for (i = 1; i <= NUMTHREADS; i++)
    {
      assert(pthread_kill(threadbag[i].self, 0) == 0);
      assert(pthread_cancel(threadbag[i].self) == 0);
    }




  Sleep(NUMTHREADS * 100);




  for (i = 1; i <= NUMTHREADS; i++)
    {
      if (!threadbag[i].started)
 {
   failed |= !threadbag[i].started;
   fprintf(stderr, "Thread %d: started %d\n", i, threadbag[i].started);
 }
    }

  assert(!failed);




  failed = 0;
  for (i = 1; i <= NUMTHREADS; i++)
    {
      int fail = 0;
      int result = 0;


      assert(GetExitCodeThread(h[i], (LPDWORD) &result) == TRUE);







      assert(threadbag[i].self.p != ((void*)0));
      assert(pthread_kill(threadbag[i].self, 0) == ESRCH);

      fail = (result != (int)(size_t)PTHREAD_CANCELED);

      if (fail)
 {
   fprintf(stderr, "Thread %d: started %d: count %d\n",
    i,
    threadbag[i].started,
    threadbag[i].count);
 }
      failed = (failed || fail);
    }

  assert(!failed);




  return 0;
}
