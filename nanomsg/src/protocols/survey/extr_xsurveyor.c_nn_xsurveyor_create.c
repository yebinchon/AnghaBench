
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xsurveyor {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xsurveyor*) ;
 struct nn_xsurveyor* nn_alloc (int,char*) ;
 int nn_xsurveyor_init (struct nn_xsurveyor*,int *,void*) ;
 int nn_xsurveyor_sockbase_vfptr ;

__attribute__((used)) static int nn_xsurveyor_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xsurveyor *self;

    self = nn_alloc (sizeof (struct nn_xsurveyor), "socket (xsurveyor)");
    alloc_assert (self);
    nn_xsurveyor_init (self, &nn_xsurveyor_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
