
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_rendertarget_view {int dummy; } ;
struct d3d8_surface {int IDirect3DSurface8_iface; } ;


 int d3d8_surface_Release (int *) ;

void d3d8_surface_release_rendertarget_view(struct d3d8_surface *surface,
        struct wined3d_rendertarget_view *rtv)
{
    if (rtv)
        d3d8_surface_Release(&surface->IDirect3DSurface8_iface);
}
