
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm_event {int item; } ;
struct nn_ctx {int events; } ;


 int nn_queue_push (int *,int *) ;

void nn_ctx_raise (struct nn_ctx *self, struct nn_fsm_event *event)
{
    nn_queue_push (&self->events, &event->item);
}
