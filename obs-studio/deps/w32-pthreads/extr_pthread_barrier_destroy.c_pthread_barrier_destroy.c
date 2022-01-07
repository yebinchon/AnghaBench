
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptw32_mcs_local_node_t ;
typedef TYPE_1__* pthread_barrier_t ;
struct TYPE_4__ {scalar_t__ nCurrentBarrierHeight; scalar_t__ nInitialBarrierHeight; int pshared; int semBarrierBreeched; int lock; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ PTW32_OBJECT_INVALID ;
 int free (TYPE_1__*) ;
 int ptw32_mcs_lock_release (int *) ;
 scalar_t__ ptw32_mcs_lock_try_acquire (int *,int *) ;
 int sem_destroy (int *) ;
 int sem_init (int *,int ,int ) ;

int
pthread_barrier_destroy (pthread_barrier_t * barrier)
{
  int result = 0;
  pthread_barrier_t b;
  ptw32_mcs_local_node_t node;

  if (barrier == ((void*)0) || *barrier == (pthread_barrier_t) PTW32_OBJECT_INVALID)
    {
      return EINVAL;
    }

  if (0 != ptw32_mcs_lock_try_acquire(&(*barrier)->lock, &node))
    {
      return EBUSY;
    }

  b = *barrier;

  if (b->nCurrentBarrierHeight < b->nInitialBarrierHeight)
    {
      result = EBUSY;
    }
  else
 {
      if (0 == (result = sem_destroy (&(b->semBarrierBreeched))))
        {
          *barrier = (pthread_barrier_t) PTW32_OBJECT_INVALID;
          ptw32_mcs_lock_release(&node);
   (void) free (b);
   return 0;
 }
      else
        {




          (void) sem_init (&(b->semBarrierBreeched), b->pshared, 0);
        }

      if (result != 0)
        {




          result = EBUSY;
        }
    }

  ptw32_mcs_lock_release(&node);
  return (result);
}
