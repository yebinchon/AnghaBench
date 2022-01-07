
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xpub {int outpipes; int sockbase; } ;
struct nn_sockbase_vfptr {int dummy; } ;


 int nn_dist_init (int *) ;
 int nn_sockbase_init (int *,struct nn_sockbase_vfptr const*,void*) ;

__attribute__((used)) static void nn_xpub_init (struct nn_xpub *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    nn_sockbase_init (&self->sockbase, vfptr, hint);
    nn_dist_init (&self->outpipes);
}
