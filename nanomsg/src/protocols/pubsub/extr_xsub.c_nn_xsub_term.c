
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xsub {int sockbase; int fq; int trie; } ;


 int nn_fq_term (int *) ;
 int nn_sockbase_term (int *) ;
 int nn_trie_term (int *) ;

__attribute__((used)) static void nn_xsub_term (struct nn_xsub *self)
{
    nn_trie_term (&self->trie);
    nn_fq_term (&self->fq);
    nn_sockbase_term (&self->sockbase);
}
