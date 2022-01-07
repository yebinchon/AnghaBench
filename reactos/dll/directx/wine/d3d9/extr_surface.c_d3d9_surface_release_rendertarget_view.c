
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_rendertarget_view {int dummy; } ;
struct d3d9_surface {int IDirect3DSurface9_iface; } ;


 int d3d9_surface_Release (int *) ;

void d3d9_surface_release_rendertarget_view(struct d3d9_surface *surface,
        struct wined3d_rendertarget_view *rtv)
{
    if (rtv)
        d3d9_surface_Release(&surface->IDirect3DSurface9_iface);
}
