
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_dist {int pipes; scalar_t__ count; } ;


 int nn_list_init (int *) ;

void nn_dist_init (struct nn_dist *self)
{
    self->count = 0;
    nn_list_init (&self->pipes);
}
