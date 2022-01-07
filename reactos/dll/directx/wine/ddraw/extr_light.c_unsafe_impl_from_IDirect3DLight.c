
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct d3d_light {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirect3DLight ;


 int assert (int) ;
 int d3d_light_vtbl ;
 struct d3d_light* impl_from_IDirect3DLight (TYPE_1__*) ;

struct d3d_light *unsafe_impl_from_IDirect3DLight(IDirect3DLight *iface)
{
    if (!iface)
        return ((void*)0);
    assert(iface->lpVtbl == &d3d_light_vtbl);

    return impl_from_IDirect3DLight(iface);
}
