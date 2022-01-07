
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int usage; struct wined3d_device* device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_4__ resource; TYPE_1__* sub_resources; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct wined3d_device {TYPE_5__* blitter; } ;
struct wined3d_context {int dummy; } ;
struct TYPE_10__ {TYPE_2__* ops; } ;
struct TYPE_8__ {scalar_t__ offscreen_rendering_mode; } ;
struct TYPE_7__ {int (* blitter_blit ) (TYPE_5__*,int ,struct wined3d_context*,struct wined3d_surface*,int ,int *,struct wined3d_surface*,int ,int *,int *,int ) ;} ;
struct TYPE_6__ {int locations; } ;
typedef int RECT ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int FIXME (char*,int ) ;
 scalar_t__ ORM_FBO ;
 int SetRect (int *,int ,int ,int ,int ) ;
 int TRUE ;
 int WINED3DUSAGE_DEPTHSTENCIL ;
 int WINED3D_BLIT_OP_COLOR_BLIT ;
 int WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 int WINED3D_TEXF_POINT ;
 struct wined3d_context* context_acquire (struct wined3d_device*,struct wined3d_texture*,unsigned int) ;
 struct wined3d_surface* context_get_rt_surface (struct wined3d_context*) ;
 int context_restore (struct wined3d_context*,struct wined3d_surface*) ;
 int stub1 (TYPE_5__*,int ,struct wined3d_context*,struct wined3d_surface*,int ,int *,struct wined3d_surface*,int ,int *,int *,int ) ;
 unsigned int surface_get_sub_resource_idx (struct wined3d_surface*) ;
 int wined3d_debug_location (int ) ;
 scalar_t__ wined3d_resource_is_offscreen (TYPE_4__*) ;
 TYPE_3__ wined3d_settings ;
 int wined3d_texture_get_level_height (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_get_level_width (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_load_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int ) ;

__attribute__((used)) static BOOL surface_load_drawable(struct wined3d_surface *surface,
        struct wined3d_context *context)
{
    unsigned int sub_resource_idx = surface_get_sub_resource_idx(surface);
    struct wined3d_texture *texture = surface->container;
    struct wined3d_surface *restore_rt = ((void*)0);
    struct wined3d_device *device;
    unsigned int level;
    RECT r;

    if (texture->resource.usage & WINED3DUSAGE_DEPTHSTENCIL)
    {
        DWORD current = texture->sub_resources[sub_resource_idx].locations;
        FIXME("Unimplemented copy from %s for depth/stencil buffers.\n",
                wined3d_debug_location(current));
        return FALSE;
    }

    if (wined3d_settings.offscreen_rendering_mode == ORM_FBO
            && wined3d_resource_is_offscreen(&texture->resource))
    {
        ERR("Trying to load offscreen surface into WINED3D_LOCATION_DRAWABLE.\n");
        return FALSE;
    }

    device = texture->resource.device;
    restore_rt = context_get_rt_surface(context);
    if (restore_rt != surface)
        context = context_acquire(device, texture, sub_resource_idx);
    else
        restore_rt = ((void*)0);

    level = sub_resource_idx % texture->level_count;
    SetRect(&r, 0, 0, wined3d_texture_get_level_width(texture, level),
            wined3d_texture_get_level_height(texture, level));
    wined3d_texture_load_location(texture, sub_resource_idx, context, WINED3D_LOCATION_TEXTURE_RGB);
    device->blitter->ops->blitter_blit(device->blitter, WINED3D_BLIT_OP_COLOR_BLIT, context,
            surface, WINED3D_LOCATION_TEXTURE_RGB, &r,
            surface, WINED3D_LOCATION_DRAWABLE, &r,
            ((void*)0), WINED3D_TEXF_POINT);

    if (restore_rt)
        context_restore(context, restore_rt);

    return TRUE;
}
