
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xreq {int sockbase; int lb; int fq; } ;


 int nn_fq_term (int *) ;
 int nn_lb_term (int *) ;
 int nn_sockbase_term (int *) ;

void nn_xreq_term (struct nn_xreq *self)
{
    nn_fq_term (&self->fq);
    nn_lb_term (&self->lb);
    nn_sockbase_term (&self->sockbase);
}
