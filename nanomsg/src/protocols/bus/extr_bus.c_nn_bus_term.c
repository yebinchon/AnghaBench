
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_bus {int xbus; } ;


 int nn_xbus_term (int *) ;

__attribute__((used)) static void nn_bus_term (struct nn_bus *self)
{
    nn_xbus_term (&self->xbus);
}
