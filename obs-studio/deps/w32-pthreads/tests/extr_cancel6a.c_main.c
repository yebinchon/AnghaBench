
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * p; } ;
typedef TYPE_1__ pthread_t ;
struct TYPE_8__ {int started; int threadnum; int count; } ;


 scalar_t__ ESRCH ;
 int NUMTHREADS ;
 void* PTHREAD_CANCELED ;
 int Sleep (int) ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,...) ;
 int mythread ;
 scalar_t__ pthread_cancel (TYPE_1__) ;
 scalar_t__ pthread_create (TYPE_1__*,int *,int ,void*) ;
 scalar_t__ pthread_join (TYPE_1__,void**) ;
 TYPE_1__ pthread_self () ;
 int stderr ;
 TYPE_2__* threadbag ;

int
main()
{
  int failed = 0;
  int i;
  pthread_t t[NUMTHREADS + 1];

  assert((t[0] = pthread_self()).p != ((void*)0));

  for (i = 1; i <= NUMTHREADS; i++)
    {
      threadbag[i].started = 0;
      threadbag[i].threadnum = i;
      assert(pthread_create(&t[i], ((void*)0), mythread, (void *) &threadbag[i]) == 0);
    }




  Sleep(500);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      assert(pthread_cancel(t[i]) == 0);
      assert(pthread_cancel(t[i]) == ESRCH);
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
      void* result = (void*)0;






      assert(pthread_join(t[i], &result) == 0);

      fail = (result != PTHREAD_CANCELED);

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
