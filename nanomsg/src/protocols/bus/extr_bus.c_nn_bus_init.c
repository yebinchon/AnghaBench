
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase_vfptr {int dummy; } ;
struct nn_bus {int xbus; } ;


 int nn_xbus_init (int *,struct nn_sockbase_vfptr const*,void*) ;

__attribute__((used)) static void nn_bus_init (struct nn_bus *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    nn_xbus_init (&self->xbus, vfptr, hint);
}
