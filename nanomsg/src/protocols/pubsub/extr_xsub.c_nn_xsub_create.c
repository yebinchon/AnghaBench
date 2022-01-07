
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xsub {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xsub*) ;
 struct nn_xsub* nn_alloc (int,char*) ;
 int nn_xsub_init (struct nn_xsub*,int *,void*) ;
 int nn_xsub_sockbase_vfptr ;

int nn_xsub_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xsub *self;

    self = nn_alloc (sizeof (struct nn_xsub), "socket (xsub)");
    alloc_assert (self);
    nn_xsub_init (self, &nn_xsub_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
