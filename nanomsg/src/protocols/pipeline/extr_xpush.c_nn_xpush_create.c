
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xpush {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xpush*) ;
 struct nn_xpush* nn_alloc (int,char*) ;
 int nn_xpush_init (struct nn_xpush*,int *,void*) ;
 int nn_xpush_sockbase_vfptr ;

int nn_xpush_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xpush *self;

    self = nn_alloc (sizeof (struct nn_xpush), "socket (push)");
    alloc_assert (self);
    nn_xpush_init (self, &nn_xpush_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
