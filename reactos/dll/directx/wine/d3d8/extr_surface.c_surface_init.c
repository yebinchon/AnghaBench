
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_texture {int dummy; } ;
struct wined3d_parent_ops {int dummy; } ;
struct TYPE_4__ {scalar_t__ refcount; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct d3d8_surface {unsigned int sub_resource_idx; int texture; scalar_t__ container; struct wined3d_texture* wined3d_texture; int rtv_entry; TYPE_2__ resource; TYPE_1__ IDirect3DSurface8_iface; } ;
typedef int IDirect3DBaseTexture8 ;


 int IDirect3DBaseTexture8_Release (int *) ;
 int IID_IDirect3DBaseTexture8 ;
 int IUnknown_QueryInterface (scalar_t__,int *,void**) ;
 scalar_t__ SUCCEEDED (int ) ;
 int d3d8_resource_init (TYPE_2__*) ;
 int d3d8_surface_vtbl ;
 struct wined3d_parent_ops d3d8_surface_wined3d_parent_ops ;
 int list_init (int *) ;
 int unsafe_impl_from_IDirect3DBaseTexture8 (int *) ;
 scalar_t__ wined3d_texture_get_parent (struct wined3d_texture*) ;

void surface_init(struct d3d8_surface *surface, struct wined3d_texture *wined3d_texture, unsigned int sub_resource_idx,
        const struct wined3d_parent_ops **parent_ops)
{
    IDirect3DBaseTexture8 *texture;

    surface->IDirect3DSurface8_iface.lpVtbl = &d3d8_surface_vtbl;
    d3d8_resource_init(&surface->resource);
    surface->resource.refcount = 0;
    list_init(&surface->rtv_entry);
    surface->container = wined3d_texture_get_parent(wined3d_texture);
    surface->wined3d_texture = wined3d_texture;
    surface->sub_resource_idx = sub_resource_idx;

    if (surface->container && SUCCEEDED(IUnknown_QueryInterface(surface->container,
            &IID_IDirect3DBaseTexture8, (void **)&texture)))
    {
        surface->texture = unsafe_impl_from_IDirect3DBaseTexture8(texture);
        IDirect3DBaseTexture8_Release(texture);
    }

    *parent_ops = &d3d8_surface_wined3d_parent_ops;
}
