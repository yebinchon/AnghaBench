
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_timerset {int timeouts; } ;


 int nn_list_term (int *) ;

void nn_timerset_term (struct nn_timerset *self)
{
    nn_list_term (&self->timeouts);
}
