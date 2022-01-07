
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptw32_mcs_local_node_t ;
typedef TYPE_1__* pthread_cond_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 scalar_t__ EAGAIN ;
 int pthread_cond_broadcast (TYPE_1__**) ;
 TYPE_1__* ptw32_cond_list_head ;
 int ptw32_cond_list_lock ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;

void *
pthread_timechange_handler_np (void *arg)
{
  int result = 0;
  pthread_cond_t cv;
  ptw32_mcs_local_node_t node;

  ptw32_mcs_lock_acquire(&ptw32_cond_list_lock, &node);

  cv = ptw32_cond_list_head;

  while (cv != ((void*)0) && 0 == result)
    {
      result = pthread_cond_broadcast (&cv);
      cv = cv->next;
    }

  ptw32_mcs_lock_release(&node);

  return (void *) (size_t) (result != 0 ? EAGAIN : 0);
}
