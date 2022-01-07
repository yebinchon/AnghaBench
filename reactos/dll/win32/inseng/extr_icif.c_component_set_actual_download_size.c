
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifcomponent {int size_actual_download; } ;
typedef int ICifComponent ;
typedef int DWORD ;


 struct cifcomponent* impl_from_ICifComponent (int *) ;

void component_set_actual_download_size(ICifComponent *iface, DWORD size)
{
    struct cifcomponent *This = impl_from_ICifComponent(iface);

    This->size_actual_download = size;
}
