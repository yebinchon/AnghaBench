
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_texture {TYPE_2__* sub_resources; } ;
struct wined3d_surface {int dummy; } ;
struct TYPE_6__ {size_t sub_resource_idx; struct wined3d_texture* texture; } ;
struct wined3d_context {TYPE_3__ current_rt; } ;
struct TYPE_4__ {struct wined3d_surface* surface; } ;
struct TYPE_5__ {TYPE_1__ u; } ;



__attribute__((used)) static inline struct wined3d_surface *context_get_rt_surface(const struct wined3d_context *context)
{
    struct wined3d_texture *texture = context->current_rt.texture;

    if (!texture)
        return ((void*)0);
    return texture->sub_resources[context->current_rt.sub_resource_idx].u.surface;
}
