
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifcomponent {int installed; } ;
typedef int ICifComponent ;
typedef int BOOL ;


 struct cifcomponent* impl_from_ICifComponent (int *) ;

void component_set_installed(ICifComponent *iface, BOOL value)
{
    struct cifcomponent *This = impl_from_ICifComponent(iface);

    This->installed = value;
}
