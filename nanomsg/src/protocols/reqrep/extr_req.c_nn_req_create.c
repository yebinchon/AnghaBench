
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sockbase {int dummy; } ;
struct TYPE_2__ {struct nn_sockbase sockbase; } ;
struct nn_req {TYPE_1__ xreq; } ;


 int alloc_assert (struct nn_req*) ;
 struct nn_req* nn_alloc (int,char*) ;
 int nn_req_init (struct nn_req*,int *,void*) ;
 int nn_req_sockbase_vfptr ;

__attribute__((used)) static int nn_req_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_req *self;

    self = nn_alloc (sizeof (struct nn_req), "socket (req)");
    alloc_assert (self);
    nn_req_init (self, &nn_req_sockbase_vfptr, hint);
    *sockbase = &self->xreq.sockbase;

    return 0;
}
