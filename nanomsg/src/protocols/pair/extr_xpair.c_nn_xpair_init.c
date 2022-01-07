
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xpair {int excl; int sockbase; } ;
struct nn_sockbase_vfptr {int dummy; } ;


 int nn_excl_init (int *) ;
 int nn_sockbase_init (int *,struct nn_sockbase_vfptr const*,void*) ;

__attribute__((used)) static void nn_xpair_init (struct nn_xpair *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    nn_sockbase_init (&self->sockbase, vfptr, hint);
    nn_excl_init (&self->excl);
}
