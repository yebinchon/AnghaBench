
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_queue_item {struct nn_queue_item* next; } ;
struct nn_queue {struct nn_queue_item* tail; struct nn_queue_item* head; } ;


 struct nn_queue_item* NN_QUEUE_NOTINQUEUE ;
 int nn_assert (int) ;

void nn_queue_push (struct nn_queue *self, struct nn_queue_item *item)
{
    nn_assert (item->next == NN_QUEUE_NOTINQUEUE);

    item->next = ((void*)0);
    if (!self->head)
        self->head = item;
    if (self->tail)
        self->tail->next = item;
    self->tail = item;
}
