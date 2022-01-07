
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker_task {int src; int item; struct nn_fsm* owner; } ;
struct nn_fsm {int dummy; } ;


 int nn_queue_item_init (int *) ;

void nn_worker_task_init (struct nn_worker_task *self, int src,
    struct nn_fsm *owner)
{
    self->src = src;
    self->owner = owner;
    nn_queue_item_init (&self->item);
}
