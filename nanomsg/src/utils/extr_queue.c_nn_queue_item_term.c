
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_queue_item {scalar_t__ next; } ;


 scalar_t__ NN_QUEUE_NOTINQUEUE ;
 int nn_assert (int) ;

void nn_queue_item_term (struct nn_queue_item *self)
{
    nn_assert (self->next == NN_QUEUE_NOTINQUEUE);
}
