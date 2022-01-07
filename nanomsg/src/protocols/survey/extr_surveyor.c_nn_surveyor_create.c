
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sockbase {int dummy; } ;
struct TYPE_2__ {struct nn_sockbase sockbase; } ;
struct nn_surveyor {TYPE_1__ xsurveyor; } ;


 int alloc_assert (struct nn_surveyor*) ;
 struct nn_surveyor* nn_alloc (int,char*) ;
 int nn_surveyor_init (struct nn_surveyor*,int *,void*) ;
 int nn_surveyor_sockbase_vfptr ;

__attribute__((used)) static int nn_surveyor_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_surveyor *self;

    self = nn_alloc (sizeof (struct nn_surveyor), "socket (surveyor)");
    alloc_assert (self);
    nn_surveyor_init (self, &nn_surveyor_sockbase_vfptr, hint);
    *sockbase = &self->xsurveyor.sockbase;

    return 0;
}
