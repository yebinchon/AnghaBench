
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_queue {scalar_t__ head; } ;



int nn_queue_empty (struct nn_queue *self)
{
    return self->head ? 0 : 1;
}
