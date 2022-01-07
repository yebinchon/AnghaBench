
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xpub {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xpub*) ;
 struct nn_xpub* nn_alloc (int,char*) ;
 int nn_xpub_init (struct nn_xpub*,int *,void*) ;
 int nn_xpub_sockbase_vfptr ;

int nn_xpub_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xpub *self;

    self = nn_alloc (sizeof (struct nn_xpub), "socket (xpub)");
    alloc_assert (self);
    nn_xpub_init (self, &nn_xpub_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
