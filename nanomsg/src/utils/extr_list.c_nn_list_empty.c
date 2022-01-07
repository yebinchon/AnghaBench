
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list {scalar_t__ first; } ;



int nn_list_empty (struct nn_list *self)
{
    return self->first ? 0 : 1;
}
