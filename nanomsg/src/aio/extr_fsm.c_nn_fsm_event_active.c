
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm_event {int item; } ;


 int nn_queue_item_isinqueue (int *) ;

int nn_fsm_event_active (struct nn_fsm_event *self)
{
    return nn_queue_item_isinqueue (&self->item);
}
