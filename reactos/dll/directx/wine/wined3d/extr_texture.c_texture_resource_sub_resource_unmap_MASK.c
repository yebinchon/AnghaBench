#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wined3d_texture_sub_resource {int locations; int /*<<< orphan*/  map_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  map_binding; } ;
struct wined3d_texture {int flags; scalar_t__ update_map_binding; TYPE_3__* swapchain; TYPE_1__ resource; } ;
struct wined3d_resource {int /*<<< orphan*/  map_count; struct wined3d_device* device; } ;
struct wined3d_device {scalar_t__ d3d_initialized; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_bo_address {int dummy; } ;
struct TYPE_6__ {TYPE_2__* swapchain_ops; struct wined3d_texture* front_buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* swapchain_frontbuffer_updated ) (TYPE_3__*) ;} ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_resource*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int WINED3D_LOCATION_DRAWABLE ; 
 int WINED3D_LOCATION_TEXTURE_RGB ; 
 int /*<<< orphan*/  WINED3D_OK ; 
 int WINED3D_TEXTURE_DC_IN_USE ; 
 int /*<<< orphan*/  WINEDDERR_NOTLOCKED ; 
 struct wined3d_context* FUNC2 (struct wined3d_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,struct wined3d_bo_address*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 struct wined3d_texture* FUNC6 (struct wined3d_resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int /*<<< orphan*/ ) ; 
 struct wined3d_texture_sub_resource* FUNC8 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_texture*) ; 

__attribute__((used)) static HRESULT FUNC10(struct wined3d_resource *resource, unsigned int sub_resource_idx)
{
    struct wined3d_texture_sub_resource *sub_resource;
    struct wined3d_device *device = resource->device;
    struct wined3d_context *context = NULL;
    struct wined3d_texture *texture;
    struct wined3d_bo_address data;

    FUNC0("resource %p, sub_resource_idx %u.\n", resource, sub_resource_idx);

    texture = FUNC6(resource);
    if (!(sub_resource = FUNC8(texture, sub_resource_idx)))
        return E_INVALIDARG;

    if (!sub_resource->map_count)
    {
        FUNC1("Trying to unmap unmapped sub-resource.\n");
        if (texture->flags & WINED3D_TEXTURE_DC_IN_USE)
            return WINED3D_OK;
        return WINEDDERR_NOTLOCKED;
    }

    if (device->d3d_initialized)
        context = FUNC2(device, NULL, 0);

    FUNC7(texture, sub_resource_idx, &data, texture->resource.map_binding);
    FUNC4(context, &data, GL_PIXEL_UNPACK_BUFFER);

    if (context)
        FUNC3(context);

    if (texture->swapchain && texture->swapchain->front_buffer == texture)
    {
        if (!(sub_resource->locations & (WINED3D_LOCATION_DRAWABLE | WINED3D_LOCATION_TEXTURE_RGB)))
            texture->swapchain->swapchain_ops->swapchain_frontbuffer_updated(texture->swapchain);
    }

    --sub_resource->map_count;
    if (!--resource->map_count && texture->update_map_binding)
        FUNC9(texture);

    return WINED3D_OK;
}