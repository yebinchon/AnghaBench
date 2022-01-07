
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm_event {int src; int type; int item; int * srcptr; int * fsm; } ;


 int nn_queue_item_init (int *) ;

void nn_fsm_event_init (struct nn_fsm_event *self)
{
    self->fsm = ((void*)0);
    self->src = -1;
    self->srcptr = ((void*)0);
    self->type = -1;
    nn_queue_item_init (&self->item);
}
