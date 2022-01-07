
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptw32_mcs_local_node_t ;
typedef int * pthread_mutex_t ;


 int EINVAL ;
 int * PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ;
 int * PTHREAD_MUTEX_INITIALIZER ;
 int * PTHREAD_RECURSIVE_MUTEX_INITIALIZER ;
 int pthread_mutex_init (int **,int *) ;
 int ptw32_errorcheck_mutexattr ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_mutex_test_init_lock ;
 int ptw32_recursive_mutexattr ;

int
ptw32_mutex_check_need_init (pthread_mutex_t * mutex)
{
  register int result = 0;
  register pthread_mutex_t mtx;
  ptw32_mcs_local_node_t node;

  ptw32_mcs_lock_acquire(&ptw32_mutex_test_init_lock, &node);
  mtx = *mutex;

  if (mtx == PTHREAD_MUTEX_INITIALIZER)
    {
      result = pthread_mutex_init (mutex, ((void*)0));
    }
  else if (mtx == PTHREAD_RECURSIVE_MUTEX_INITIALIZER)
    {
      result = pthread_mutex_init (mutex, &ptw32_recursive_mutexattr);
    }
  else if (mtx == PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
    {
      result = pthread_mutex_init (mutex, &ptw32_errorcheck_mutexattr);
    }
  else if (mtx == ((void*)0))
    {





      result = EINVAL;
    }

  ptw32_mcs_lock_release(&node);

  return (result);
}
