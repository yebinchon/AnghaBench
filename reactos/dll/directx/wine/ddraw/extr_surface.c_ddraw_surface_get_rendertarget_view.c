
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_rendertarget_view {int dummy; } ;
struct ddraw_surface {struct wined3d_rendertarget_view* wined3d_rtv; int sub_resource_idx; int wined3d_texture; } ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int ddraw_view_wined3d_parent_ops ;
 int wined3d_rendertarget_view_create_from_sub_resource (int ,int ,struct ddraw_surface*,int *,struct wined3d_rendertarget_view**) ;

struct wined3d_rendertarget_view *ddraw_surface_get_rendertarget_view(struct ddraw_surface *surface)
{
    HRESULT hr;

    if (surface->wined3d_rtv)
        return surface->wined3d_rtv;

    if (FAILED(hr = wined3d_rendertarget_view_create_from_sub_resource(surface->wined3d_texture,
            surface->sub_resource_idx, surface, &ddraw_view_wined3d_parent_ops, &surface->wined3d_rtv)))
    {
        ERR("Failed to create rendertarget view, hr %#x.\n", hr);
        return ((void*)0);
    }

    return surface->wined3d_rtv;
}
