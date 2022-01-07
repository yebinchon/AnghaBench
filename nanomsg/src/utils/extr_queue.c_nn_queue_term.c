
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_queue {int * tail; int * head; } ;



void nn_queue_term (struct nn_queue *self)
{
    self->head = ((void*)0);
    self->tail = ((void*)0);
}
