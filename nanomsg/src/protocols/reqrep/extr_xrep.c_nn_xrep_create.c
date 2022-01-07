
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xrep {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xrep*) ;
 struct nn_xrep* nn_alloc (int,char*) ;
 int nn_xrep_init (struct nn_xrep*,int *,void*) ;
 int nn_xrep_sockbase_vfptr ;

__attribute__((used)) static int nn_xrep_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xrep *self;

    self = nn_alloc (sizeof (struct nn_xrep), "socket (xrep)");
    alloc_assert (self);
    nn_xrep_init (self, &nn_xrep_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
