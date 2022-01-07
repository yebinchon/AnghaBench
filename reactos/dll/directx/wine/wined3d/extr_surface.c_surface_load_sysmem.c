
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_texture_sub_resource {int locations; } ;
struct TYPE_2__ {int usage; int draw_binding; } ;
struct wined3d_texture {TYPE_1__ resource; int download_count; struct wined3d_texture_sub_resource* sub_resources; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,struct wined3d_surface*,int ) ;
 int TRUE ;
 int WINED3DUSAGE_DEPTHSTENCIL ;
 int WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_LOCATION_RB_MULTISAMPLE ;
 int WINED3D_LOCATION_RB_RESOLVED ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 int WINED3D_LOCATION_TEXTURE_SRGB ;
 scalar_t__ is_multisample_location (struct wined3d_texture*,int) ;
 int read_from_framebuffer (struct wined3d_surface*,struct wined3d_context*,int,int ) ;
 int surface_download_data (struct wined3d_surface*,struct wined3d_gl_info const*,int ) ;
 unsigned int surface_get_sub_resource_idx (struct wined3d_surface*) ;
 int wined3d_debug_location (int) ;
 int wined3d_texture_bind_and_dirtify (struct wined3d_texture*,struct wined3d_context*,int) ;
 int wined3d_texture_load_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int) ;
 int wined3d_texture_prepare_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int ) ;

__attribute__((used)) static BOOL surface_load_sysmem(struct wined3d_surface *surface,
        struct wined3d_context *context, DWORD dst_location)
{
    unsigned int sub_resource_idx = surface_get_sub_resource_idx(surface);
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_texture *texture = surface->container;
    struct wined3d_texture_sub_resource *sub_resource;

    sub_resource = &texture->sub_resources[sub_resource_idx];
    wined3d_texture_prepare_location(texture, sub_resource_idx, context, dst_location);


    if (is_multisample_location(texture, WINED3D_LOCATION_TEXTURE_RGB))
    {
        wined3d_texture_load_location(texture, sub_resource_idx, context, WINED3D_LOCATION_RB_RESOLVED);
        read_from_framebuffer(surface, context, WINED3D_LOCATION_RB_RESOLVED, dst_location);
        return TRUE;
    }
    else
    {
        if (sub_resource->locations & (WINED3D_LOCATION_RB_MULTISAMPLE | WINED3D_LOCATION_RB_RESOLVED))
            wined3d_texture_load_location(texture, sub_resource_idx, context, WINED3D_LOCATION_TEXTURE_RGB);


        if (sub_resource->locations & (WINED3D_LOCATION_TEXTURE_RGB | WINED3D_LOCATION_TEXTURE_SRGB))
        {
            wined3d_texture_bind_and_dirtify(texture, context,
                    !(sub_resource->locations & WINED3D_LOCATION_TEXTURE_RGB));
            surface_download_data(surface, gl_info, dst_location);
            ++texture->download_count;

            return TRUE;
        }
    }

    if (!(texture->resource.usage & WINED3DUSAGE_DEPTHSTENCIL)
            && (sub_resource->locations & WINED3D_LOCATION_DRAWABLE))
    {
        read_from_framebuffer(surface, context, texture->resource.draw_binding, dst_location);
        return TRUE;
    }

    FIXME("Can't load surface %p with location flags %s into sysmem.\n",
            surface, wined3d_debug_location(sub_resource->locations));
    return FALSE;
}
