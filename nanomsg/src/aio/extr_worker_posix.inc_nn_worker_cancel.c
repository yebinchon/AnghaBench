
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker_task {int item; } ;
struct nn_worker {int sync; int tasks; } ;


 int nn_mutex_lock (int *) ;
 int nn_mutex_unlock (int *) ;
 int nn_queue_remove (int *,int *) ;

void nn_worker_cancel (struct nn_worker *self, struct nn_worker_task *task)
{
    nn_mutex_lock (&self->sync);
    nn_queue_remove (&self->tasks, &task->item);
    nn_mutex_unlock (&self->sync);
}
