
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct d3d9_vertexshader {int dummy; } ;
struct TYPE_5__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirect3DVertexShader9 ;


 int WARN (char*,TYPE_1__*,int *) ;
 int d3d9_vertexshader_vtbl ;
 struct d3d9_vertexshader* impl_from_IDirect3DVertexShader9 (TYPE_1__*) ;

struct d3d9_vertexshader *unsafe_impl_from_IDirect3DVertexShader9(IDirect3DVertexShader9 *iface)
{
    if (!iface)
        return ((void*)0);
    if (iface->lpVtbl != &d3d9_vertexshader_vtbl)
        WARN("Vertex shader %p with the wrong vtbl %p\n", iface, iface->lpVtbl);

    return impl_from_IDirect3DVertexShader9(iface);
}
