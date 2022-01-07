
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list {int * last; int * first; } ;



void nn_list_init (struct nn_list *self)
{
    self->first = ((void*)0);
    self->last = ((void*)0);
}
