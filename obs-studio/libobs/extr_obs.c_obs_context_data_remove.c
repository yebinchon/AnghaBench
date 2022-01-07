
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_context_data {int * mutex; TYPE_1__** prev_next; TYPE_1__* next; } ;
struct TYPE_2__ {struct TYPE_2__** prev_next; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_context_data_remove(struct obs_context_data *context)
{
 if (context && context->mutex) {
  pthread_mutex_lock(context->mutex);
  if (context->prev_next)
   *context->prev_next = context->next;
  if (context->next)
   context->next->prev_next = context->prev_next;
  pthread_mutex_unlock(context->mutex);

  context->mutex = ((void*)0);
 }
}
