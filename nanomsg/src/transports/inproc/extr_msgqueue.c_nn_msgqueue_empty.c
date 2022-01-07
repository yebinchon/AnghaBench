
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msgqueue {scalar_t__ count; } ;



int nn_msgqueue_empty (struct nn_msgqueue *self)
{
    return self->count == 0 ? 1 : 0;
}
