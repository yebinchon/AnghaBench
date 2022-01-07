
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xbus {int sockbase; int outpipes; int inpipes; } ;


 int nn_dist_term (int *) ;
 int nn_fq_term (int *) ;
 int nn_sockbase_term (int *) ;

void nn_xbus_term (struct nn_xbus *self)
{
    nn_fq_term (&self->inpipes);
    nn_dist_term (&self->outpipes);
    nn_sockbase_term (&self->sockbase);
}
