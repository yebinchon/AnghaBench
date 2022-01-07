
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xrep {int inpipes; int outpipes; int next_key; int sockbase; } ;
struct nn_sockbase_vfptr {int dummy; } ;


 int nn_fq_init (int *) ;
 int nn_hash_init (int *) ;
 int nn_random_generate (int *,int) ;
 int nn_sockbase_init (int *,struct nn_sockbase_vfptr const*,void*) ;

void nn_xrep_init (struct nn_xrep *self, const struct nn_sockbase_vfptr *vfptr,
    void *hint)
{
    nn_sockbase_init (&self->sockbase, vfptr, hint);



    nn_random_generate (&self->next_key, sizeof (self->next_key));

    nn_hash_init (&self->outpipes);
    nn_fq_init (&self->inpipes);
}
