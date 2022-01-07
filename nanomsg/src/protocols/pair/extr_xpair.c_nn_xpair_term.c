
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xpair {int sockbase; int excl; } ;


 int nn_excl_term (int *) ;
 int nn_sockbase_term (int *) ;

__attribute__((used)) static void nn_xpair_term (struct nn_xpair *self)
{
    nn_excl_term (&self->excl);
    nn_sockbase_term (&self->sockbase);
}
