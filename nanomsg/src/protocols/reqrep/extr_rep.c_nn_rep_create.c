
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sockbase {int dummy; } ;
struct TYPE_2__ {struct nn_sockbase sockbase; } ;
struct nn_rep {TYPE_1__ xrep; } ;


 int alloc_assert (struct nn_rep*) ;
 struct nn_rep* nn_alloc (int,char*) ;
 int nn_rep_init (struct nn_rep*,int *,void*) ;
 int nn_rep_sockbase_vfptr ;

__attribute__((used)) static int nn_rep_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_rep *self;

    self = nn_alloc (sizeof (struct nn_rep), "socket (rep)");
    alloc_assert (self);
    nn_rep_init (self, &nn_rep_sockbase_vfptr, hint);
    *sockbase = &self->xrep.sockbase;

    return 0;
}
