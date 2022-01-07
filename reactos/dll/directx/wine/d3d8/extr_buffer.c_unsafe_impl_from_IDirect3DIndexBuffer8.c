
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct d3d8_indexbuffer {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirect3DIndexBuffer8 ;


 int assert (int) ;
 int d3d8_indexbuffer_vtbl ;
 struct d3d8_indexbuffer* impl_from_IDirect3DIndexBuffer8 (TYPE_1__*) ;

struct d3d8_indexbuffer *unsafe_impl_from_IDirect3DIndexBuffer8(IDirect3DIndexBuffer8 *iface)
{
    if (!iface)
        return ((void*)0);
    assert(iface->lpVtbl == &d3d8_indexbuffer_vtbl);

    return impl_from_IDirect3DIndexBuffer8(iface);
}
