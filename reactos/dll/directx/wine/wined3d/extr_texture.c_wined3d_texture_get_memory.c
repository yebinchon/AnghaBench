
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_texture_sub_resource {int offset; TYPE_1__* buffer; int buffer_object; } ;
struct TYPE_4__ {int * heap_memory; } ;
struct wined3d_texture {TYPE_2__ resource; int * user_memory; struct wined3d_texture_sub_resource* sub_resources; } ;
struct wined3d_bo_address {int buffer_object; int * addr; } ;
struct TYPE_3__ {int name; } ;
typedef int DWORD ;


 int ERR (char*,int ) ;
 int TRACE (char*,struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int ) ;
 int WINED3D_LOCATION_BUFFER ;
 int WINED3D_LOCATION_SYSMEM ;
 int WINED3D_LOCATION_USER_MEMORY ;
 int wined3d_debug_location (int) ;

void wined3d_texture_get_memory(struct wined3d_texture *texture, unsigned int sub_resource_idx,
        struct wined3d_bo_address *data, DWORD locations)
{
    struct wined3d_texture_sub_resource *sub_resource;

    TRACE("texture %p, sub_resource_idx %u, data %p, locations %s.\n",
            texture, sub_resource_idx, data, wined3d_debug_location(locations));

    sub_resource = &texture->sub_resources[sub_resource_idx];
    if (locations & WINED3D_LOCATION_BUFFER)
    {
        data->addr = ((void*)0);

        data->buffer_object = sub_resource->buffer_object;



        return;
    }
    if (locations & WINED3D_LOCATION_USER_MEMORY)
    {
        data->addr = texture->user_memory;
        data->buffer_object = 0;
        return;
    }
    if (locations & WINED3D_LOCATION_SYSMEM)
    {
        data->addr = texture->resource.heap_memory;
        data->addr += sub_resource->offset;
        data->buffer_object = 0;
        return;
    }

    ERR("Unexpected locations %s.\n", wined3d_debug_location(locations));
    data->addr = ((void*)0);
    data->buffer_object = 0;
}
