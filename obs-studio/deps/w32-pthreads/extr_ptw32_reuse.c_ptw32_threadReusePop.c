
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int member_1; int * member_0; } ;
struct TYPE_4__ {TYPE_2__ ptHandle; int * prevReuse; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
typedef TYPE_2__ pthread_t ;


 void* PTW32_THREAD_REUSE_EMPTY ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 void* ptw32_threadReuseBottom ;
 void* ptw32_threadReuseTop ;
 int ptw32_thread_reuse_lock ;

pthread_t
ptw32_threadReusePop (void)
{
  pthread_t t = {((void*)0), 0};
  ptw32_mcs_local_node_t node;

  ptw32_mcs_lock_acquire(&ptw32_thread_reuse_lock, &node);

  if (PTW32_THREAD_REUSE_EMPTY != ptw32_threadReuseTop)
    {
      ptw32_thread_t * tp;

      tp = ptw32_threadReuseTop;

      ptw32_threadReuseTop = tp->prevReuse;

      if (PTW32_THREAD_REUSE_EMPTY == ptw32_threadReuseTop)
        {
          ptw32_threadReuseBottom = PTW32_THREAD_REUSE_EMPTY;
        }

      tp->prevReuse = ((void*)0);

      t = tp->ptHandle;
    }

  ptw32_mcs_lock_release(&node);

  return t;

}
