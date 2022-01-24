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
struct wined3d_texture_sub_resource {int locations; } ;
struct wined3d_texture {int /*<<< orphan*/  sysmem_count; struct wined3d_texture_sub_resource* sub_resources; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,struct wined3d_texture*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_texture*,...) ; 
 int WINED3D_LOCATION_SYSMEM ; 
 int WINED3D_LOCATION_TEXTURE_RGB ; 
 int WINED3D_LOCATION_TEXTURE_SRGB ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_texture*) ; 

void FUNC4(struct wined3d_texture *texture,
        unsigned int sub_resource_idx, DWORD location)
{
    struct wined3d_texture_sub_resource *sub_resource;
    DWORD previous_locations;

    FUNC1("texture %p, sub_resource_idx %u, location %s.\n",
            texture, sub_resource_idx, FUNC2(location));

    if (location & (WINED3D_LOCATION_TEXTURE_RGB | WINED3D_LOCATION_TEXTURE_SRGB))
        FUNC3(texture);

    sub_resource = &texture->sub_resources[sub_resource_idx];
    previous_locations = sub_resource->locations;
    sub_resource->locations &= ~location;
    if (previous_locations != WINED3D_LOCATION_SYSMEM && sub_resource->locations == WINED3D_LOCATION_SYSMEM)
        ++texture->sysmem_count;

    FUNC1("New locations flags are %s.\n", FUNC2(sub_resource->locations));

    if (!sub_resource->locations)
        FUNC0("Sub-resource %u of texture %p does not have any up to date location.\n",
                sub_resource_idx, texture);
}