
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct d3d9_vertexbuffer {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirect3DVertexBuffer9 ;


 int assert (int) ;
 int d3d9_vertexbuffer_vtbl ;
 struct d3d9_vertexbuffer* impl_from_IDirect3DVertexBuffer9 (TYPE_1__*) ;

struct d3d9_vertexbuffer *unsafe_impl_from_IDirect3DVertexBuffer9(IDirect3DVertexBuffer9 *iface)
{
    if (!iface)
        return ((void*)0);
    assert(iface->lpVtbl == &d3d9_vertexbuffer_vtbl);

    return impl_from_IDirect3DVertexBuffer9(iface);
}
