
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x; } ;
struct TYPE_6__ {int * threadH; TYPE_1__ ptHandle; } ;
typedef TYPE_2__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
struct TYPE_7__ {scalar_t__ x; scalar_t__ p; } ;
typedef TYPE_3__ pthread_t ;


 int EINVAL ;
 int ESRCH ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_thread_reuse_lock ;

int
pthread_kill (pthread_t thread, int sig)
{
  int result = 0;
  ptw32_thread_t * tp;
  ptw32_mcs_local_node_t node;

  ptw32_mcs_lock_acquire(&ptw32_thread_reuse_lock, &node);

  tp = (ptw32_thread_t *) thread.p;

  if (((void*)0) == tp
      || thread.x != tp->ptHandle.x
      || ((void*)0) == tp->threadH)
    {
      result = ESRCH;
    }

  ptw32_mcs_lock_release(&node);

  if (0 == result && 0 != sig)
    {



      result = EINVAL;
    }

  return result;

}
