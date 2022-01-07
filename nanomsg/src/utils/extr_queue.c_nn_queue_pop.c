
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_queue_item {struct nn_queue_item* next; } ;
struct nn_queue {int * tail; struct nn_queue_item* head; } ;


 struct nn_queue_item* NN_QUEUE_NOTINQUEUE ;

struct nn_queue_item *nn_queue_pop (struct nn_queue *self)
{
    struct nn_queue_item *result;

    if (!self->head)
        return ((void*)0);
    result = self->head;
    self->head = result->next;
    if (!self->head)
        self->tail = ((void*)0);
    result->next = NN_QUEUE_NOTINQUEUE;
    return result;
}
