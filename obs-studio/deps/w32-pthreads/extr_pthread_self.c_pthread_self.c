
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ p; int member_1; int * member_0; } ;
struct TYPE_6__ {int implicit; int threadH; int sched_priority; int thread; int detachState; TYPE_2__ ptHandle; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef TYPE_2__ pthread_t ;


 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,int ,int ,int *,int ,int ,int ) ;
 int FALSE ;
 int GetCurrentProcess () ;
 int GetCurrentThread () ;
 int GetCurrentThreadId () ;
 int GetThreadPriority (int ) ;
 int PTHREAD_CREATE_DETACHED ;
 scalar_t__ pthread_getspecific (int ) ;
 int pthread_setspecific (int ,void*) ;
 TYPE_2__ ptw32_new () ;
 int ptw32_selfThreadKey ;
 int ptw32_threadReusePush (TYPE_2__) ;

pthread_t
pthread_self (void)
{
  pthread_t self;
  pthread_t nil = {((void*)0), 0};
  ptw32_thread_t * sp;






  sp = (ptw32_thread_t *) pthread_getspecific (ptw32_selfThreadKey);

  if (sp != ((void*)0))
    {
      self = sp->ptHandle;
    }
  else
    {




      self = ptw32_new ();
      sp = (ptw32_thread_t *) self.p;

      if (sp != ((void*)0))
 {






   sp->implicit = 1;
   sp->detachState = PTHREAD_CREATE_DETACHED;
   sp->thread = GetCurrentThreadId ();
   if (!DuplicateHandle (GetCurrentProcess (),
    GetCurrentThread (),
    GetCurrentProcess (),
    &sp->threadH,
    0, FALSE, DUPLICATE_SAME_ACCESS))
     {





       ptw32_threadReusePush (self);




       return nil;
     }






   sp->sched_priority = GetThreadPriority (sp->threadH);
   pthread_setspecific (ptw32_selfThreadKey, (void *) sp);
 }
    }

  return (self);

}
