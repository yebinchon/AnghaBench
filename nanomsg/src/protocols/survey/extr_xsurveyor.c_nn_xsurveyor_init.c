
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xsurveyor {int inpipes; int outpipes; int sockbase; } ;
struct nn_sockbase_vfptr {int dummy; } ;


 int nn_dist_init (int *) ;
 int nn_fq_init (int *) ;
 int nn_sockbase_init (int *,struct nn_sockbase_vfptr const*,void*) ;

void nn_xsurveyor_init (struct nn_xsurveyor *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    nn_sockbase_init (&self->sockbase, vfptr, hint);
    nn_dist_init (&self->outpipes);
    nn_fq_init (&self->inpipes);
}
