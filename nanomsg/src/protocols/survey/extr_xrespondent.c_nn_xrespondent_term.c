
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xrespondent {int sockbase; int outpipes; int inpipes; } ;


 int nn_fq_term (int *) ;
 int nn_hash_term (int *) ;
 int nn_sockbase_term (int *) ;

void nn_xrespondent_term (struct nn_xrespondent *self)
{
    nn_fq_term (&self->inpipes);
    nn_hash_term (&self->outpipes);
    nn_sockbase_term (&self->sockbase);
}
