
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xpub {int sockbase; int outpipes; } ;


 int nn_dist_term (int *) ;
 int nn_sockbase_term (int *) ;

__attribute__((used)) static void nn_xpub_term (struct nn_xpub *self)
{
    nn_dist_term (&self->outpipes);
    nn_sockbase_term (&self->sockbase);
}
