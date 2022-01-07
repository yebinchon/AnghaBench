
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_2__ {int started; int threadnum; int count; } ;


 int NUMTHREADS ;
 void* PTHREAD_CANCELED ;
 int Sleep (int) ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,...) ;
 int mythread ;
 scalar_t__ pthread_cancel (int ) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,void**) ;
 int stderr ;
 TYPE_1__* threadbag ;

int
main ()
{
  int failed = 0;
  int i;
  pthread_t t[NUMTHREADS + 1];

  for (i = 1; i <= NUMTHREADS; i++)
    {
      threadbag[i].started = 0;
      threadbag[i].threadnum = i;
      assert (pthread_create (&t[i], ((void*)0), mythread, (void *) &threadbag[i])
       == 0);
    }




  Sleep (500);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      assert (pthread_cancel (t[i]) == 0);
    }




  Sleep (NUMTHREADS * 100);




  for (i = 1; i <= NUMTHREADS; i++)
    {
      if (!threadbag[i].started)
 {
   failed |= !threadbag[i].started;
   fprintf (stderr, "Thread %d: started %d\n", i,
     threadbag[i].started);
 }
    }

  assert (!failed);




  failed = 0;
  for (i = 1; i <= NUMTHREADS; i++)
    {
      int fail = 0;
      void* result = (void*)((int)(size_t)PTHREAD_CANCELED + 1);






      assert (pthread_join (t[i], &result) == 0);

      fail = (result != PTHREAD_CANCELED);

      if (fail)
 {
   fprintf (stderr, "Thread %d: started %d: count %d\n",
     i, threadbag[i].started, threadbag[i].count);
 }
      failed = (failed || fail);
    }

  assert (!failed);




  return 0;
}
