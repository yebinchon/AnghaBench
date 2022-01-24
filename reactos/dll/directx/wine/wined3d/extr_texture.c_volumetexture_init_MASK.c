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
struct wined3d_texture_sub_resource {int /*<<< orphan*/ * parent; int /*<<< orphan*/  parent_ops; int /*<<< orphan*/  locations; } ;
struct TYPE_6__ {int /*<<< orphan*/  map_binding; } ;
struct wined3d_texture {float* pow2_matrix; unsigned int level_count; struct wined3d_texture_sub_resource* sub_resources; TYPE_3__ resource; int /*<<< orphan*/  target; } ;
struct wined3d_resource_desc {scalar_t__ format; int usage; int /*<<< orphan*/  depth; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  access; } ;
struct wined3d_parent_ops {int dummy; } ;
struct wined3d_gl_info {int /*<<< orphan*/ * supported; } ;
struct wined3d_device_parent {TYPE_2__* ops; } ;
struct wined3d_device {TYPE_1__* adapter; struct wined3d_device_parent* device_parent; } ;
typedef  int UINT ;
struct TYPE_5__ {struct wined3d_texture* (* volume_created ) (struct wined3d_device_parent*,struct wined3d_texture*,unsigned int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {struct wined3d_gl_info gl_info; } ;
typedef  struct wined3d_texture* HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 size_t ARB_TEXTURE_NON_POWER_OF_TWO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t EXT_TEXTURE3D ; 
 struct wined3d_texture* E_INVALIDARG ; 
 scalar_t__ FUNC1 (struct wined3d_texture*) ; 
 int /*<<< orphan*/  GL_TEXTURE_3D ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct wined3d_texture* WINED3DERR_INVALIDCALL ; 
 scalar_t__ WINED3DFMT_UNKNOWN ; 
 int WINED3DUSAGE_DYNAMIC ; 
 int WINED3DUSAGE_SCRATCH ; 
 int /*<<< orphan*/  WINED3D_LOCATION_BUFFER ; 
 int /*<<< orphan*/  WINED3D_LOCATION_DISCARDED ; 
 struct wined3d_texture* WINED3D_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct wined3d_texture* FUNC5 (struct wined3d_device_parent*,struct wined3d_texture*,unsigned int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  texture3d_ops ; 
 int /*<<< orphan*/  texture_resource_ops ; 
 struct wined3d_texture* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_texture*) ; 
 struct wined3d_texture* FUNC10 (struct wined3d_texture*,int /*<<< orphan*/ *,int,int,struct wined3d_resource_desc const*,int /*<<< orphan*/ ,struct wined3d_device*,void*,struct wined3d_parent_ops const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct wined3d_texture*,struct wined3d_gl_info const*) ; 

__attribute__((used)) static HRESULT FUNC12(struct wined3d_texture *texture, const struct wined3d_resource_desc *desc,
        UINT layer_count, UINT level_count, DWORD flags, struct wined3d_device *device, void *parent,
        const struct wined3d_parent_ops *parent_ops)
{
    struct wined3d_device_parent *device_parent = device->device_parent;
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    unsigned int i;
    HRESULT hr;

    if (layer_count != 1)
    {
        FUNC0("Invalid layer count for volume texture.\n");
        return E_INVALIDARG;
    }

    /* TODO: It should only be possible to create textures for formats
     * that are reported as supported. */
    if (WINED3DFMT_UNKNOWN >= desc->format)
    {
        FUNC3("(%p) : Texture cannot be created with a format of WINED3DFMT_UNKNOWN.\n", texture);
        return WINED3DERR_INVALIDCALL;
    }

    if (!gl_info->supported[EXT_TEXTURE3D])
    {
        FUNC3("(%p) : Texture cannot be created - no volume texture support.\n", texture);
        return WINED3DERR_INVALIDCALL;
    }

    if (desc->usage & WINED3DUSAGE_DYNAMIC && (FUNC7(desc->access)
            || desc->usage & WINED3DUSAGE_SCRATCH))
    {
        FUNC3("Attempted to create a DYNAMIC texture with access %s.\n",
                FUNC6(desc->access));
        return WINED3DERR_INVALIDCALL;
    }

    if (!gl_info->supported[ARB_TEXTURE_NON_POWER_OF_TWO])
    {
        if (!FUNC4(desc->width) || !FUNC4(desc->height) || !FUNC4(desc->depth))
        {
            if (desc->usage & WINED3DUSAGE_SCRATCH)
            {
                FUNC3("Creating a scratch NPOT volume texture despite lack of HW support.\n");
            }
            else
            {
                FUNC3("Attempted to create a NPOT volume texture (%u, %u, %u) without GL support.\n",
                        desc->width, desc->height, desc->depth);
                return WINED3DERR_INVALIDCALL;
            }
        }
    }

    if (FUNC1(hr = FUNC10(texture, &texture3d_ops, 1, level_count, desc,
            flags, device, parent, parent_ops, &texture_resource_ops)))
    {
        FUNC3("Failed to initialize texture, returning %#x.\n", hr);
        return hr;
    }

    texture->pow2_matrix[0] = 1.0f;
    texture->pow2_matrix[5] = 1.0f;
    texture->pow2_matrix[10] = 1.0f;
    texture->pow2_matrix[15] = 1.0f;
    texture->target = GL_TEXTURE_3D;

    if (FUNC11(texture, gl_info))
    {
        FUNC8(&texture->resource);
        texture->resource.map_binding = WINED3D_LOCATION_BUFFER;
    }

    /* Generate all the sub resources. */
    for (i = 0; i < texture->level_count; ++i)
    {
        struct wined3d_texture_sub_resource *sub_resource;

        sub_resource = &texture->sub_resources[i];
        sub_resource->locations = WINED3D_LOCATION_DISCARDED;

        if (FUNC1(hr = device_parent->ops->volume_created(device_parent,
                texture, i, &sub_resource->parent, &sub_resource->parent_ops)))
        {
            FUNC3("Failed to create volume parent, hr %#x.\n", hr);
            sub_resource->parent = NULL;
            FUNC9(texture);
            return hr;
        }

        FUNC2("parent %p, parent_ops %p.\n", parent, parent_ops);

        FUNC2("Created volume level %u.\n", i);
    }

    return WINED3D_OK;
}