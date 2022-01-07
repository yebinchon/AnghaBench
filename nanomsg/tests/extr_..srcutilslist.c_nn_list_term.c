
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list {int * last; int * first; } ;


 int nn_assert (int ) ;

void nn_list_term (struct nn_list *self)
{
    nn_assert (self->first == ((void*)0));
    nn_assert (self->last == ((void*)0));
}
