
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ptw32_mcs_local_node_t ;
typedef TYPE_2__* pthread_spinlock_t ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_7__ {scalar_t__ interlock; TYPE_1__ u; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_LONG ;


 int EBUSY ;
 int EINVAL ;
 TYPE_2__* PTHREAD_SPINLOCK_INITIALIZER ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG (int ,scalar_t__,scalar_t__) ;
 scalar_t__ PTW32_SPIN_INVALID ;
 scalar_t__ PTW32_SPIN_UNLOCKED ;
 scalar_t__ PTW32_SPIN_USE_MUTEX ;
 int free (TYPE_2__*) ;
 int pthread_mutex_destroy (int *) ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_spinlock_test_init_lock ;

int
pthread_spin_destroy (pthread_spinlock_t * lock)
{
  register pthread_spinlock_t s;
  int result = 0;

  if (lock == ((void*)0) || *lock == ((void*)0))
    {
      return EINVAL;
    }

  if ((s = *lock) != PTHREAD_SPINLOCK_INITIALIZER)
    {
      if (s->interlock == PTW32_SPIN_USE_MUTEX)
 {
   result = pthread_mutex_destroy (&(s->u.mutex));
 }
      else if ((PTW32_INTERLOCKED_LONG) PTW32_SPIN_UNLOCKED !=
        PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG ((PTW32_INTERLOCKED_LONGPTR) &s->interlock,
         (PTW32_INTERLOCKED_LONG) PTW32_SPIN_INVALID,
         (PTW32_INTERLOCKED_LONG) PTW32_SPIN_UNLOCKED))
 {
   result = EINVAL;
 }

      if (0 == result)
 {




   *lock = ((void*)0);
   (void) free (s);
 }
    }
  else
    {



      ptw32_mcs_local_node_t node;

      ptw32_mcs_lock_acquire(&ptw32_spinlock_test_init_lock, &node);




      if (*lock == PTHREAD_SPINLOCK_INITIALIZER)
 {






   *lock = ((void*)0);
 }
      else
 {




   result = EBUSY;
 }

       ptw32_mcs_lock_release(&node);
    }

  return (result);
}
