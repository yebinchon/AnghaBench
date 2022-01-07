
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptw32_mcs_local_node_t ;
typedef int * pthread_cond_t ;


 int EINVAL ;
 int * PTHREAD_COND_INITIALIZER ;
 int pthread_cond_init (int **,int *) ;
 int ptw32_cond_test_init_lock ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;

int
ptw32_cond_check_need_init (pthread_cond_t * cond)
{
  int result = 0;
  ptw32_mcs_local_node_t node;





  ptw32_mcs_lock_acquire(&ptw32_cond_test_init_lock, &node);
  if (*cond == PTHREAD_COND_INITIALIZER)
    {
      result = pthread_cond_init (cond, ((void*)0));
    }
  else if (*cond == ((void*)0))
    {





      result = EINVAL;
    }

  ptw32_mcs_lock_release(&node);

  return result;
}
