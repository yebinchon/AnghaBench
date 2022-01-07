
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_rendertarget_view {int dummy; } ;
struct d3d9_surface {struct wined3d_rendertarget_view* wined3d_rtv; int rtv_entry; TYPE_1__* texture; int IDirect3DSurface9_iface; int sub_resource_idx; int wined3d_texture; } ;
struct TYPE_2__ {int rtv_list; } ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int d3d9_surface_AddRef (int *) ;
 int d3d9_surface_Release (int *) ;
 int d3d9_view_wined3d_parent_ops ;
 int list_add_head (int *,int *) ;
 int wined3d_rendertarget_view_create_from_sub_resource (int ,int ,struct d3d9_surface*,int *,struct wined3d_rendertarget_view**) ;

struct wined3d_rendertarget_view *d3d9_surface_acquire_rendertarget_view(struct d3d9_surface *surface)
{
    HRESULT hr;




    d3d9_surface_AddRef(&surface->IDirect3DSurface9_iface);

    if (surface->wined3d_rtv)
        return surface->wined3d_rtv;

    if (FAILED(hr = wined3d_rendertarget_view_create_from_sub_resource(surface->wined3d_texture,
            surface->sub_resource_idx, surface, &d3d9_view_wined3d_parent_ops, &surface->wined3d_rtv)))
    {
        ERR("Failed to create rendertarget view, hr %#x.\n", hr);
        d3d9_surface_Release(&surface->IDirect3DSurface9_iface);
        return ((void*)0);
    }

    if (surface->texture)
        list_add_head(&surface->texture->rtv_list, &surface->rtv_entry);

    return surface->wined3d_rtv;
}
