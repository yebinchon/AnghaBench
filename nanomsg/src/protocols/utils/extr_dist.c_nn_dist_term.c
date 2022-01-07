
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_dist {scalar_t__ count; int pipes; } ;


 int nn_assert (int) ;
 int nn_list_term (int *) ;

void nn_dist_term (struct nn_dist *self)
{
    nn_assert (self->count == 0);
    nn_list_term (&self->pipes);
}
