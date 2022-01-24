#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_texture_sub_resource {int locations; } ;
struct TYPE_2__ {int usage; int draw_binding; } ;
struct wined3d_texture {TYPE_1__ resource; int /*<<< orphan*/  download_count; struct wined3d_texture_sub_resource* sub_resources; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_surface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int WINED3DUSAGE_DEPTHSTENCIL ; 
 int WINED3D_LOCATION_DRAWABLE ; 
 int WINED3D_LOCATION_RB_MULTISAMPLE ; 
 int WINED3D_LOCATION_RB_RESOLVED ; 
 int WINED3D_LOCATION_TEXTURE_RGB ; 
 int WINED3D_LOCATION_TEXTURE_SRGB ; 
 scalar_t__ FUNC1 (struct wined3d_texture*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_surface*,struct wined3d_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_surface*,struct wined3d_gl_info const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_texture*,struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9(struct wined3d_surface *surface,
        struct wined3d_context *context, DWORD dst_location)
{
    unsigned int sub_resource_idx = FUNC4(surface);
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_texture *texture = surface->container;
    struct wined3d_texture_sub_resource *sub_resource;

    sub_resource = &texture->sub_resources[sub_resource_idx];
    FUNC8(texture, sub_resource_idx, context, dst_location);

    /* We cannot download data from multisample textures directly. */
    if (FUNC1(texture, WINED3D_LOCATION_TEXTURE_RGB))
    {
        FUNC7(texture, sub_resource_idx, context, WINED3D_LOCATION_RB_RESOLVED);
        FUNC2(surface, context, WINED3D_LOCATION_RB_RESOLVED, dst_location);
        return TRUE;
    }
    else
    {
        if (sub_resource->locations & (WINED3D_LOCATION_RB_MULTISAMPLE | WINED3D_LOCATION_RB_RESOLVED))
            FUNC7(texture, sub_resource_idx, context, WINED3D_LOCATION_TEXTURE_RGB);

        /* Download the surface to system memory. */
        if (sub_resource->locations & (WINED3D_LOCATION_TEXTURE_RGB | WINED3D_LOCATION_TEXTURE_SRGB))
        {
            FUNC6(texture, context,
                    !(sub_resource->locations & WINED3D_LOCATION_TEXTURE_RGB));
            FUNC3(surface, gl_info, dst_location);
            ++texture->download_count;

            return TRUE;
        }
    }

    if (!(texture->resource.usage & WINED3DUSAGE_DEPTHSTENCIL)
            && (sub_resource->locations & WINED3D_LOCATION_DRAWABLE))
    {
        FUNC2(surface, context, texture->resource.draw_binding, dst_location);
        return TRUE;
    }

    FUNC0("Can't load surface %p with location flags %s into sysmem.\n",
            surface, FUNC5(sub_resource->locations));
    return FALSE;
}