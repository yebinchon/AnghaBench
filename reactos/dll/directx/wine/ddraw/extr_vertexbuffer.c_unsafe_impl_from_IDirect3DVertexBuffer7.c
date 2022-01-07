
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct d3d_vertex_buffer {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirect3DVertexBuffer7 ;


 int assert (int) ;
 int d3d_vertex_buffer7_vtbl ;
 struct d3d_vertex_buffer* impl_from_IDirect3DVertexBuffer7 (TYPE_1__*) ;

struct d3d_vertex_buffer *unsafe_impl_from_IDirect3DVertexBuffer7(IDirect3DVertexBuffer7 *iface)
{
    if (!iface)
        return ((void*)0);
    assert(iface->lpVtbl == &d3d_vertex_buffer7_vtbl);

    return impl_from_IDirect3DVertexBuffer7(iface);
}
