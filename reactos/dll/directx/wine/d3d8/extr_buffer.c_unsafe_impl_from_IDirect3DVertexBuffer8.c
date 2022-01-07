
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct d3d8_vertexbuffer {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirect3DVertexBuffer8 ;


 int Direct3DVertexBuffer8_Vtbl ;
 int assert (int) ;
 struct d3d8_vertexbuffer* impl_from_IDirect3DVertexBuffer8 (TYPE_1__*) ;

struct d3d8_vertexbuffer *unsafe_impl_from_IDirect3DVertexBuffer8(IDirect3DVertexBuffer8 *iface)
{
    if (!iface)
        return ((void*)0);
    assert(iface->lpVtbl == &Direct3DVertexBuffer8_Vtbl);

    return impl_from_IDirect3DVertexBuffer8(iface);
}
