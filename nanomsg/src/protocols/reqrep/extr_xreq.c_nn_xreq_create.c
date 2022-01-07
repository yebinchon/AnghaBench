
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xreq {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xreq*) ;
 struct nn_xreq* nn_alloc (int,char*) ;
 int nn_xreq_init (struct nn_xreq*,int *,void*) ;
 int nn_xreq_sockbase_vfptr ;

__attribute__((used)) static int nn_xreq_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xreq *self;

    self = nn_alloc (sizeof (struct nn_xreq), "socket (xreq)");
    alloc_assert (self);
    nn_xreq_init (self, &nn_xreq_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
