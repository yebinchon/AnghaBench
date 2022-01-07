
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ x; TYPE_1__* p; } ;
struct TYPE_6__ {TYPE_3__ ptHandle; int * cancelEvent; int * robustMxList; scalar_t__ robustMxListLock; scalar_t__ threadLock; scalar_t__ stateLock; int cancelType; int cancelState; int detachState; int sched_priority; scalar_t__ seqNumber; } ;
typedef TYPE_1__ ptw32_thread_t ;
struct TYPE_7__ {scalar_t__ x; TYPE_1__* p; int member_1; int * member_0; } ;
typedef TYPE_2__ pthread_t ;


 int * CreateEvent (int ,int,int,int *) ;
 int PTHREAD_CANCEL_DEFERRED ;
 int PTHREAD_CANCEL_ENABLE ;
 int PTHREAD_CREATE_JOINABLE ;
 scalar_t__ PTW32_FALSE ;
 scalar_t__ PTW32_TRUE ;
 int THREAD_PRIORITY_NORMAL ;
 scalar_t__ calloc (int,int) ;
 TYPE_2__ ptw32_threadReusePop () ;
 int ptw32_threadReusePush (TYPE_3__) ;
 scalar_t__ ptw32_threadSeqNumber ;

pthread_t
ptw32_new (void)
{
  pthread_t t;
  pthread_t nil = {((void*)0), 0};
  ptw32_thread_t * tp;




  t = ptw32_threadReusePop ();

  if (((void*)0) != t.p)
    {
      tp = (ptw32_thread_t *) t.p;
    }
  else
    {

      tp = (ptw32_thread_t *) calloc (1, sizeof(ptw32_thread_t));

      if (tp == ((void*)0))
 {
   return nil;
 }


      t.p = tp->ptHandle.p = tp;
      t.x = tp->ptHandle.x = 0;
    }


  tp->seqNumber = ++ptw32_threadSeqNumber;
  tp->sched_priority = THREAD_PRIORITY_NORMAL;
  tp->detachState = PTHREAD_CREATE_JOINABLE;
  tp->cancelState = PTHREAD_CANCEL_ENABLE;
  tp->cancelType = PTHREAD_CANCEL_DEFERRED;
  tp->stateLock = 0;
  tp->threadLock = 0;
  tp->robustMxListLock = 0;
  tp->robustMxList = ((void*)0);
  tp->cancelEvent = CreateEvent (0, (int) PTW32_TRUE,
     (int) PTW32_FALSE,
     ((void*)0));

  if (tp->cancelEvent == ((void*)0))
    {
      ptw32_threadReusePush (tp->ptHandle);
      return nil;
    }

  return t;

}
