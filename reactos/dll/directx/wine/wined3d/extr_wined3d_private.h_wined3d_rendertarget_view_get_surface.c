
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_texture {TYPE_2__* sub_resources; } ;
struct wined3d_surface {int dummy; } ;
struct wined3d_rendertarget_view {size_t sub_resource_idx; TYPE_3__* resource; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {struct wined3d_surface* surface; } ;
struct TYPE_5__ {TYPE_1__ u; } ;


 scalar_t__ WINED3D_RTYPE_TEXTURE_2D ;
 struct wined3d_texture* texture_from_resource (TYPE_3__*) ;

__attribute__((used)) static inline struct wined3d_surface *wined3d_rendertarget_view_get_surface(
        const struct wined3d_rendertarget_view *view)
{
    struct wined3d_texture *texture;

    if (!view || view->resource->type != WINED3D_RTYPE_TEXTURE_2D)
        return ((void*)0);

    texture = texture_from_resource(view->resource);

    return texture->sub_resources[view->sub_resource_idx].u.surface;
}
