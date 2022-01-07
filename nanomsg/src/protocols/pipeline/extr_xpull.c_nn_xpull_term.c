
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xpull {int sockbase; int fq; } ;


 int nn_fq_term (int *) ;
 int nn_sockbase_term (int *) ;

__attribute__((used)) static void nn_xpull_term (struct nn_xpull *self)
{
    nn_fq_term (&self->fq);
    nn_sockbase_term (&self->sockbase);
}
