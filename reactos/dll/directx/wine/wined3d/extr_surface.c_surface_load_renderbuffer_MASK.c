#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int usage; int /*<<< orphan*/  device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_1__ resource; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct wined3d_context {int dummy; } ;
struct TYPE_8__ {int locations; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RECT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int WINED3DUSAGE_DEPTHSTENCIL ; 
 int WINED3D_LOCATION_RB_MULTISAMPLE ; 
 int WINED3D_LOCATION_RB_RESOLVED ; 
 int WINED3D_LOCATION_TEXTURE_RGB ; 
 int WINED3D_LOCATION_TEXTURE_SRGB ; 
 int /*<<< orphan*/  WINED3D_TEXF_POINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wined3d_context*,int /*<<< orphan*/ ,struct wined3d_surface*,int,TYPE_2__ const*,struct wined3d_surface*,int,TYPE_2__ const*) ; 
 TYPE_3__* FUNC2 (struct wined3d_surface*) ; 
 unsigned int FUNC3 (struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_texture*,unsigned int) ; 

__attribute__((used)) static BOOL FUNC7(struct wined3d_surface *surface, struct wined3d_context *context,
        DWORD dst_location)
{
    struct wined3d_texture *texture = surface->container;
    unsigned int level = FUNC3(surface) % texture->level_count;
    const RECT rect = {0, 0,
            FUNC6(texture, level),
            FUNC5(texture, level)};
    DWORD locations = FUNC2(surface)->locations;
    DWORD src_location;

    if (texture->resource.usage & WINED3DUSAGE_DEPTHSTENCIL)
    {
        FUNC0("Unimplemented copy from %s for depth/stencil buffers.\n",
                FUNC4(locations));
        return FALSE;
    }

    if (locations & WINED3D_LOCATION_RB_MULTISAMPLE)
        src_location = WINED3D_LOCATION_RB_MULTISAMPLE;
    else if (locations & WINED3D_LOCATION_RB_RESOLVED)
        src_location = WINED3D_LOCATION_RB_RESOLVED;
    else if (locations & WINED3D_LOCATION_TEXTURE_SRGB)
        src_location = WINED3D_LOCATION_TEXTURE_SRGB;
    else /* surface_blt_fbo will load the source location if necessary. */
        src_location = WINED3D_LOCATION_TEXTURE_RGB;

    FUNC1(texture->resource.device, context, WINED3D_TEXF_POINT,
            surface, src_location, &rect, surface, dst_location, &rect);

    return TRUE;
}