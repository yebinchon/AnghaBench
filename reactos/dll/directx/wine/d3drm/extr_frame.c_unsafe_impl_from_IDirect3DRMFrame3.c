
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct d3drm_frame {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirect3DRMFrame3 ;


 int assert (int) ;
 int d3drm_frame3_vtbl ;
 struct d3drm_frame* impl_from_IDirect3DRMFrame3 (TYPE_1__*) ;

struct d3drm_frame *unsafe_impl_from_IDirect3DRMFrame3(IDirect3DRMFrame3 *iface)
{
    if (!iface)
        return ((void*)0);
    assert(iface->lpVtbl == &d3drm_frame3_vtbl);

    return impl_from_IDirect3DRMFrame3(iface);
}
