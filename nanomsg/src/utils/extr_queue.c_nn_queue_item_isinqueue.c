
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_queue_item {scalar_t__ next; } ;


 scalar_t__ NN_QUEUE_NOTINQUEUE ;

int nn_queue_item_isinqueue (struct nn_queue_item *self)
{
    return self->next == NN_QUEUE_NOTINQUEUE ? 0 : 1;
}
