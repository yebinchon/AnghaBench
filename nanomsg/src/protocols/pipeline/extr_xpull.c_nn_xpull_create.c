
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xpull {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xpull*) ;
 struct nn_xpull* nn_alloc (int,char*) ;
 int nn_xpull_init (struct nn_xpull*,int *,void*) ;
 int nn_xpull_sockbase_vfptr ;

int nn_xpull_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xpull *self;

    self = nn_alloc (sizeof (struct nn_xpull), "socket (pull)");
    alloc_assert (self);
    nn_xpull_init (self, &nn_xpull_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
