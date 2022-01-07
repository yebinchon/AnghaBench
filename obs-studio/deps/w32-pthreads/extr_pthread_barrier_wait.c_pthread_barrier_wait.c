
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptw32_mcs_local_node_t ;
typedef TYPE_1__* pthread_barrier_t ;
struct TYPE_3__ {scalar_t__ nCurrentBarrierHeight; int nInitialBarrierHeight; int proxynode; int semBarrierBreeched; int lock; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_LONG ;


 int EINVAL ;
 int PTHREAD_BARRIER_SERIAL_THREAD ;
 scalar_t__ PTW32_INTERLOCKED_INCREMENT_LONG (int ) ;
 scalar_t__ PTW32_OBJECT_INVALID ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_mcs_node_transfer (int *,int *) ;
 int ptw32_semwait (int *) ;
 int sem_post_multiple (int *,int) ;

int
pthread_barrier_wait (pthread_barrier_t * barrier)
{
  int result;
  pthread_barrier_t b;

  ptw32_mcs_local_node_t node;

  if (barrier == ((void*)0) || *barrier == (pthread_barrier_t) PTW32_OBJECT_INVALID)
    {
      return EINVAL;
    }

  ptw32_mcs_lock_acquire(&(*barrier)->lock, &node);

  b = *barrier;
  if (--b->nCurrentBarrierHeight == 0)
    {





      ptw32_mcs_node_transfer(&b->proxynode, &node);






      result = (b->nInitialBarrierHeight > 1
                ? sem_post_multiple (&(b->semBarrierBreeched),
         b->nInitialBarrierHeight - 1) : 0);
    }
  else
    {
      ptw32_mcs_lock_release(&node);
      result = ptw32_semwait (&(b->semBarrierBreeched));
    }

  if ((PTW32_INTERLOCKED_LONG)PTW32_INTERLOCKED_INCREMENT_LONG((PTW32_INTERLOCKED_LONGPTR)&b->nCurrentBarrierHeight)
    == (PTW32_INTERLOCKED_LONG)b->nInitialBarrierHeight)
    {



      ptw32_mcs_lock_release(&b->proxynode);
      if (0 == result)
        {
          result = PTHREAD_BARRIER_SERIAL_THREAD;
        }
    }

  return (result);
}
