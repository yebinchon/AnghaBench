#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_texture_sub_resource {int /*<<< orphan*/  locations; } ;
struct wined3d_texture {int flags; scalar_t__ download_count; unsigned int level_count; unsigned int layer_count; int /*<<< orphan*/  resource; struct wined3d_texture_sub_resource* sub_resources; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,struct wined3d_texture*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_texture*) ; 
 int /*<<< orphan*/  WINED3D_LOCATION_SYSMEM ; 
 int WINED3D_TEXTURE_CONVERTED ; 
 scalar_t__ WINED3D_TEXTURE_DYNAMIC_MAP_THRESHOLD ; 
 int WINED3D_TEXTURE_PIN_SYSMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wined3d_texture *texture)
{
    struct wined3d_texture_sub_resource *sub_resource;
    unsigned int i, sub_count;

    if (texture->flags & (WINED3D_TEXTURE_CONVERTED | WINED3D_TEXTURE_PIN_SYSMEM)
            || texture->download_count > WINED3D_TEXTURE_DYNAMIC_MAP_THRESHOLD)
    {
        FUNC1("Not evicting system memory for texture %p.\n", texture);
        return;
    }

    FUNC1("Evicting system memory for texture %p.\n", texture);

    sub_count = texture->level_count * texture->layer_count;
    for (i = 0; i < sub_count; ++i)
    {
        sub_resource = &texture->sub_resources[i];
        if (sub_resource->locations == WINED3D_LOCATION_SYSMEM)
            FUNC0("WINED3D_LOCATION_SYSMEM is the only location for sub-resource %u of texture %p.\n",
                    i, texture);
        sub_resource->locations &= ~WINED3D_LOCATION_SYSMEM;
    }
    FUNC2(&texture->resource);
}