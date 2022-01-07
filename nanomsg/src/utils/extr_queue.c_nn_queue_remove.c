
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_queue_item {scalar_t__ next; } ;
struct nn_queue {struct nn_queue_item* tail; struct nn_queue_item* head; } ;


 scalar_t__ NN_QUEUE_NOTINQUEUE ;

void nn_queue_remove (struct nn_queue *self, struct nn_queue_item *item)
{
    struct nn_queue_item *it;
    struct nn_queue_item *prev;

    if (item->next == NN_QUEUE_NOTINQUEUE)
        return;

    prev = ((void*)0);
    for (it = self->head; it != ((void*)0); it = it->next) {
        if (it == item) {
            if (self->head == it)
                self->head = it->next;
            if (self->tail == it)
                self->tail = prev;
            if (prev)
                prev->next = it->next;
            item->next = NN_QUEUE_NOTINQUEUE;
            return;
        }
        prev = it;
    }
}
