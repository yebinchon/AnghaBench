
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture_sub_resource {int locations; } ;
struct wined3d_texture {int flags; scalar_t__ download_count; unsigned int level_count; unsigned int layer_count; int resource; struct wined3d_texture_sub_resource* sub_resources; } ;


 int ERR (char*,unsigned int,struct wined3d_texture*) ;
 int TRACE (char*,struct wined3d_texture*) ;
 int WINED3D_LOCATION_SYSMEM ;
 int WINED3D_TEXTURE_CONVERTED ;
 scalar_t__ WINED3D_TEXTURE_DYNAMIC_MAP_THRESHOLD ;
 int WINED3D_TEXTURE_PIN_SYSMEM ;
 int wined3d_resource_free_sysmem (int *) ;

__attribute__((used)) static void wined3d_texture_evict_sysmem(struct wined3d_texture *texture)
{
    struct wined3d_texture_sub_resource *sub_resource;
    unsigned int i, sub_count;

    if (texture->flags & (WINED3D_TEXTURE_CONVERTED | WINED3D_TEXTURE_PIN_SYSMEM)
            || texture->download_count > WINED3D_TEXTURE_DYNAMIC_MAP_THRESHOLD)
    {
        TRACE("Not evicting system memory for texture %p.\n", texture);
        return;
    }

    TRACE("Evicting system memory for texture %p.\n", texture);

    sub_count = texture->level_count * texture->layer_count;
    for (i = 0; i < sub_count; ++i)
    {
        sub_resource = &texture->sub_resources[i];
        if (sub_resource->locations == WINED3D_LOCATION_SYSMEM)
            ERR("WINED3D_LOCATION_SYSMEM is the only location for sub-resource %u of texture %p.\n",
                    i, texture);
        sub_resource->locations &= ~WINED3D_LOCATION_SYSMEM;
    }
    wined3d_resource_free_sysmem(&texture->resource);
}
