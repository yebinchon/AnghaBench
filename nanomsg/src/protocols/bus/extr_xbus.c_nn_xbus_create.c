
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xbus {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xbus*) ;
 struct nn_xbus* nn_alloc (int,char*) ;
 int nn_xbus_init (struct nn_xbus*,int *,void*) ;
 int nn_xbus_sockbase_vfptr ;

__attribute__((used)) static int nn_xbus_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xbus *self;

    self = nn_alloc (sizeof (struct nn_xbus), "socket (bus)");
    alloc_assert (self);
    nn_xbus_init (self, &nn_xbus_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
