
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifcomponent {char* id; } ;
typedef int ICifComponent ;


 struct cifcomponent* impl_from_ICifComponent (int *) ;

char *component_get_id(ICifComponent *iface)
{
    struct cifcomponent *This = impl_from_ICifComponent(iface);

    return This->id;
}
