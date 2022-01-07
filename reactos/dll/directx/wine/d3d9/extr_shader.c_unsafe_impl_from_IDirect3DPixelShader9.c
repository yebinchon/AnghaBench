
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct d3d9_pixelshader {int dummy; } ;
struct TYPE_5__ {int * lpVtbl; } ;
typedef TYPE_1__ IDirect3DPixelShader9 ;


 int WARN (char*,TYPE_1__*,int *) ;
 int d3d9_pixelshader_vtbl ;
 struct d3d9_pixelshader* impl_from_IDirect3DPixelShader9 (TYPE_1__*) ;

struct d3d9_pixelshader *unsafe_impl_from_IDirect3DPixelShader9(IDirect3DPixelShader9 *iface)
{
    if (!iface)
        return ((void*)0);
    if (iface->lpVtbl != &d3d9_pixelshader_vtbl)
        WARN("Pixel shader %p with the wrong vtbl %p\n", iface, iface->lpVtbl);

    return impl_from_IDirect3DPixelShader9(iface);
}
