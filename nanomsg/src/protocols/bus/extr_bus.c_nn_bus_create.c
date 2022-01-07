
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sockbase {int dummy; } ;
struct TYPE_2__ {struct nn_sockbase sockbase; } ;
struct nn_bus {TYPE_1__ xbus; } ;


 int alloc_assert (struct nn_bus*) ;
 struct nn_bus* nn_alloc (int,char*) ;
 int nn_bus_init (struct nn_bus*,int *,void*) ;
 int nn_bus_sockbase_vfptr ;

__attribute__((used)) static int nn_bus_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_bus *self;

    self = nn_alloc (sizeof (struct nn_bus), "socket (bus)");
    alloc_assert (self);
    nn_bus_init (self, &nn_bus_sockbase_vfptr, hint);
    *sockbase = &self->xbus.sockbase;

    return 0;
}
