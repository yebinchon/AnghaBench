
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture_sub_resource {scalar_t__ locations; } ;
struct wined3d_texture {int sysmem_count; struct wined3d_texture_sub_resource* sub_resources; } ;
typedef scalar_t__ DWORD ;


 int TRACE (char*,struct wined3d_texture*,...) ;
 scalar_t__ WINED3D_LOCATION_SYSMEM ;
 int wined3d_debug_location (scalar_t__) ;
 int wined3d_texture_evict_sysmem (struct wined3d_texture*) ;

void wined3d_texture_validate_location(struct wined3d_texture *texture,
        unsigned int sub_resource_idx, DWORD location)
{
    struct wined3d_texture_sub_resource *sub_resource;
    DWORD previous_locations;

    TRACE("texture %p, sub_resource_idx %u, location %s.\n",
            texture, sub_resource_idx, wined3d_debug_location(location));

    sub_resource = &texture->sub_resources[sub_resource_idx];
    previous_locations = sub_resource->locations;
    sub_resource->locations |= location;
    if (previous_locations == WINED3D_LOCATION_SYSMEM && location != WINED3D_LOCATION_SYSMEM
            && !--texture->sysmem_count)
        wined3d_texture_evict_sysmem(texture);

    TRACE("New locations flags are %s.\n", wined3d_debug_location(sub_resource->locations));
}
