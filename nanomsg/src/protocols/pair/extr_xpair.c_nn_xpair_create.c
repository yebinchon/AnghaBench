
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xpair {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xpair*) ;
 struct nn_xpair* nn_alloc (int,char*) ;
 int nn_xpair_init (struct nn_xpair*,int *,void*) ;
 int nn_xpair_sockbase_vfptr ;

int nn_xpair_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xpair *self;

    self = nn_alloc (sizeof (struct nn_xpair), "socket (pair)");
    alloc_assert (self);
    nn_xpair_init (self, &nn_xpair_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
