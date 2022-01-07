
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int threadCopy ;
struct TYPE_7__ {int * threadH; int * cancelEvent; } ;
typedef TYPE_1__ ptw32_thread_t ;
struct TYPE_8__ {scalar_t__ p; } ;
typedef TYPE_2__ pthread_t ;


 int CloseHandle (int *) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int ptw32_threadReusePush (TYPE_2__) ;

void
ptw32_threadDestroy (pthread_t thread)
{
  ptw32_thread_t * tp = (ptw32_thread_t *) thread.p;
  ptw32_thread_t threadCopy;

  if (tp != ((void*)0))
    {



      memcpy (&threadCopy, tp, sizeof (threadCopy));





      ptw32_threadReusePush (thread);


      if (threadCopy.cancelEvent != ((void*)0))
 {
   CloseHandle (threadCopy.cancelEvent);
 }





      if (threadCopy.threadH != 0)
 {
   CloseHandle (threadCopy.threadH);
 }


    }
}
