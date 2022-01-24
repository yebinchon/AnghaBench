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
struct wined3d_texture_sub_resource {scalar_t__ locations; } ;
struct wined3d_texture {int /*<<< orphan*/  sysmem_count; struct wined3d_texture_sub_resource* sub_resources; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_texture*,...) ; 
 scalar_t__ WINED3D_LOCATION_SYSMEM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_texture*) ; 

void FUNC3(struct wined3d_texture *texture,
        unsigned int sub_resource_idx, DWORD location)
{
    struct wined3d_texture_sub_resource *sub_resource;
    DWORD previous_locations;

    FUNC0("texture %p, sub_resource_idx %u, location %s.\n",
            texture, sub_resource_idx, FUNC1(location));

    sub_resource = &texture->sub_resources[sub_resource_idx];
    previous_locations = sub_resource->locations;
    sub_resource->locations |= location;
    if (previous_locations == WINED3D_LOCATION_SYSMEM && location != WINED3D_LOCATION_SYSMEM
            && !--texture->sysmem_count)
        FUNC2(texture);

    FUNC0("New locations flags are %s.\n", FUNC1(sub_resource->locations));
}