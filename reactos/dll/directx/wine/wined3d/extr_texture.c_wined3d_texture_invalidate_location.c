
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture_sub_resource {int locations; } ;
struct wined3d_texture {int sysmem_count; struct wined3d_texture_sub_resource* sub_resources; } ;
typedef int DWORD ;


 int ERR (char*,unsigned int,struct wined3d_texture*) ;
 int TRACE (char*,struct wined3d_texture*,...) ;
 int WINED3D_LOCATION_SYSMEM ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 int WINED3D_LOCATION_TEXTURE_SRGB ;
 int wined3d_debug_location (int) ;
 int wined3d_texture_set_dirty (struct wined3d_texture*) ;

void wined3d_texture_invalidate_location(struct wined3d_texture *texture,
        unsigned int sub_resource_idx, DWORD location)
{
    struct wined3d_texture_sub_resource *sub_resource;
    DWORD previous_locations;

    TRACE("texture %p, sub_resource_idx %u, location %s.\n",
            texture, sub_resource_idx, wined3d_debug_location(location));

    if (location & (WINED3D_LOCATION_TEXTURE_RGB | WINED3D_LOCATION_TEXTURE_SRGB))
        wined3d_texture_set_dirty(texture);

    sub_resource = &texture->sub_resources[sub_resource_idx];
    previous_locations = sub_resource->locations;
    sub_resource->locations &= ~location;
    if (previous_locations != WINED3D_LOCATION_SYSMEM && sub_resource->locations == WINED3D_LOCATION_SYSMEM)
        ++texture->sysmem_count;

    TRACE("New locations flags are %s.\n", wined3d_debug_location(sub_resource->locations));

    if (!sub_resource->locations)
        ERR("Sub-resource %u of texture %p does not have any up to date location.\n",
                sub_resource_idx, texture);
}
