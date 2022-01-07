
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase_vfptr {int dummy; } ;
struct nn_rep {scalar_t__ flags; int xrep; } ;


 int nn_xrep_init (int *,struct nn_sockbase_vfptr const*,void*) ;

void nn_rep_init (struct nn_rep *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    nn_xrep_init (&self->xrep, vfptr, hint);
    self->flags = 0;
}
