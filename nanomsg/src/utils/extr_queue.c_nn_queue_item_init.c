
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_queue_item {int next; } ;


 int NN_QUEUE_NOTINQUEUE ;

void nn_queue_item_init (struct nn_queue_item *self)
{
    self->next = NN_QUEUE_NOTINQUEUE;
}
