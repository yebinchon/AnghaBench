
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_texture_sub_resource {int locations; int map_count; } ;
struct TYPE_4__ {int map_binding; } ;
struct wined3d_texture {int flags; scalar_t__ update_map_binding; TYPE_3__* swapchain; TYPE_1__ resource; } ;
struct wined3d_resource {int map_count; struct wined3d_device* device; } ;
struct wined3d_device {scalar_t__ d3d_initialized; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_bo_address {int dummy; } ;
struct TYPE_6__ {TYPE_2__* swapchain_ops; struct wined3d_texture* front_buffer; } ;
struct TYPE_5__ {int (* swapchain_frontbuffer_updated ) (TYPE_3__*) ;} ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int TRACE (char*,struct wined3d_resource*,unsigned int) ;
 int WARN (char*) ;
 int WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 int WINED3D_OK ;
 int WINED3D_TEXTURE_DC_IN_USE ;
 int WINEDDERR_NOTLOCKED ;
 struct wined3d_context* context_acquire (struct wined3d_device*,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 int context_unmap_bo_address (struct wined3d_context*,struct wined3d_bo_address*,int ) ;
 int stub1 (TYPE_3__*) ;
 struct wined3d_texture* texture_from_resource (struct wined3d_resource*) ;
 int wined3d_texture_get_memory (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int ) ;
 struct wined3d_texture_sub_resource* wined3d_texture_get_sub_resource (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_update_map_binding (struct wined3d_texture*) ;

__attribute__((used)) static HRESULT texture_resource_sub_resource_unmap(struct wined3d_resource *resource, unsigned int sub_resource_idx)
{
    struct wined3d_texture_sub_resource *sub_resource;
    struct wined3d_device *device = resource->device;
    struct wined3d_context *context = ((void*)0);
    struct wined3d_texture *texture;
    struct wined3d_bo_address data;

    TRACE("resource %p, sub_resource_idx %u.\n", resource, sub_resource_idx);

    texture = texture_from_resource(resource);
    if (!(sub_resource = wined3d_texture_get_sub_resource(texture, sub_resource_idx)))
        return E_INVALIDARG;

    if (!sub_resource->map_count)
    {
        WARN("Trying to unmap unmapped sub-resource.\n");
        if (texture->flags & WINED3D_TEXTURE_DC_IN_USE)
            return WINED3D_OK;
        return WINEDDERR_NOTLOCKED;
    }

    if (device->d3d_initialized)
        context = context_acquire(device, ((void*)0), 0);

    wined3d_texture_get_memory(texture, sub_resource_idx, &data, texture->resource.map_binding);
    context_unmap_bo_address(context, &data, GL_PIXEL_UNPACK_BUFFER);

    if (context)
        context_release(context);

    if (texture->swapchain && texture->swapchain->front_buffer == texture)
    {
        if (!(sub_resource->locations & (WINED3D_LOCATION_DRAWABLE | WINED3D_LOCATION_TEXTURE_RGB)))
            texture->swapchain->swapchain_ops->swapchain_frontbuffer_updated(texture->swapchain);
    }

    --sub_resource->map_count;
    if (!--resource->map_count && texture->update_map_binding)
        wined3d_texture_update_map_binding(texture);

    return WINED3D_OK;
}
