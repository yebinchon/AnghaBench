
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_texture_sub_resource {int * parent; int parent_ops; int locations; } ;
struct TYPE_6__ {int map_binding; } ;
struct wined3d_texture {float* pow2_matrix; unsigned int level_count; struct wined3d_texture_sub_resource* sub_resources; TYPE_3__ resource; int target; } ;
struct wined3d_resource_desc {scalar_t__ format; int usage; int depth; int height; int width; int access; } ;
struct wined3d_parent_ops {int dummy; } ;
struct wined3d_gl_info {int * supported; } ;
struct wined3d_device_parent {TYPE_2__* ops; } ;
struct wined3d_device {TYPE_1__* adapter; struct wined3d_device_parent* device_parent; } ;
typedef int UINT ;
struct TYPE_5__ {struct wined3d_texture* (* volume_created ) (struct wined3d_device_parent*,struct wined3d_texture*,unsigned int,int **,int *) ;} ;
struct TYPE_4__ {struct wined3d_gl_info gl_info; } ;
typedef struct wined3d_texture* HRESULT ;
typedef int DWORD ;


 size_t ARB_TEXTURE_NON_POWER_OF_TWO ;
 int ERR (char*) ;
 size_t EXT_TEXTURE3D ;
 struct wined3d_texture* E_INVALIDARG ;
 scalar_t__ FAILED (struct wined3d_texture*) ;
 int GL_TEXTURE_3D ;
 int TRACE (char*,unsigned int,...) ;
 int WARN (char*,...) ;
 struct wined3d_texture* WINED3DERR_INVALIDCALL ;
 scalar_t__ WINED3DFMT_UNKNOWN ;
 int WINED3DUSAGE_DYNAMIC ;
 int WINED3DUSAGE_SCRATCH ;
 int WINED3D_LOCATION_BUFFER ;
 int WINED3D_LOCATION_DISCARDED ;
 struct wined3d_texture* WINED3D_OK ;
 int is_power_of_two (int ) ;
 struct wined3d_texture* stub1 (struct wined3d_device_parent*,struct wined3d_texture*,unsigned int,int **,int *) ;
 int texture3d_ops ;
 int texture_resource_ops ;
 struct wined3d_texture* wined3d_debug_resource_access (int ) ;
 scalar_t__ wined3d_resource_access_is_managed (int ) ;
 int wined3d_resource_free_sysmem (TYPE_3__*) ;
 int wined3d_texture_cleanup_sync (struct wined3d_texture*) ;
 struct wined3d_texture* wined3d_texture_init (struct wined3d_texture*,int *,int,int,struct wined3d_resource_desc const*,int ,struct wined3d_device*,void*,struct wined3d_parent_ops const*,int *) ;
 scalar_t__ wined3d_texture_use_pbo (struct wined3d_texture*,struct wined3d_gl_info const*) ;

__attribute__((used)) static HRESULT volumetexture_init(struct wined3d_texture *texture, const struct wined3d_resource_desc *desc,
        UINT layer_count, UINT level_count, DWORD flags, struct wined3d_device *device, void *parent,
        const struct wined3d_parent_ops *parent_ops)
{
    struct wined3d_device_parent *device_parent = device->device_parent;
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    unsigned int i;
    HRESULT hr;

    if (layer_count != 1)
    {
        ERR("Invalid layer count for volume texture.\n");
        return E_INVALIDARG;
    }



    if (WINED3DFMT_UNKNOWN >= desc->format)
    {
        WARN("(%p) : Texture cannot be created with a format of WINED3DFMT_UNKNOWN.\n", texture);
        return WINED3DERR_INVALIDCALL;
    }

    if (!gl_info->supported[EXT_TEXTURE3D])
    {
        WARN("(%p) : Texture cannot be created - no volume texture support.\n", texture);
        return WINED3DERR_INVALIDCALL;
    }

    if (desc->usage & WINED3DUSAGE_DYNAMIC && (wined3d_resource_access_is_managed(desc->access)
            || desc->usage & WINED3DUSAGE_SCRATCH))
    {
        WARN("Attempted to create a DYNAMIC texture with access %s.\n",
                wined3d_debug_resource_access(desc->access));
        return WINED3DERR_INVALIDCALL;
    }

    if (!gl_info->supported[ARB_TEXTURE_NON_POWER_OF_TWO])
    {
        if (!is_power_of_two(desc->width) || !is_power_of_two(desc->height) || !is_power_of_two(desc->depth))
        {
            if (desc->usage & WINED3DUSAGE_SCRATCH)
            {
                WARN("Creating a scratch NPOT volume texture despite lack of HW support.\n");
            }
            else
            {
                WARN("Attempted to create a NPOT volume texture (%u, %u, %u) without GL support.\n",
                        desc->width, desc->height, desc->depth);
                return WINED3DERR_INVALIDCALL;
            }
        }
    }

    if (FAILED(hr = wined3d_texture_init(texture, &texture3d_ops, 1, level_count, desc,
            flags, device, parent, parent_ops, &texture_resource_ops)))
    {
        WARN("Failed to initialize texture, returning %#x.\n", hr);
        return hr;
    }

    texture->pow2_matrix[0] = 1.0f;
    texture->pow2_matrix[5] = 1.0f;
    texture->pow2_matrix[10] = 1.0f;
    texture->pow2_matrix[15] = 1.0f;
    texture->target = GL_TEXTURE_3D;

    if (wined3d_texture_use_pbo(texture, gl_info))
    {
        wined3d_resource_free_sysmem(&texture->resource);
        texture->resource.map_binding = WINED3D_LOCATION_BUFFER;
    }


    for (i = 0; i < texture->level_count; ++i)
    {
        struct wined3d_texture_sub_resource *sub_resource;

        sub_resource = &texture->sub_resources[i];
        sub_resource->locations = WINED3D_LOCATION_DISCARDED;

        if (FAILED(hr = device_parent->ops->volume_created(device_parent,
                texture, i, &sub_resource->parent, &sub_resource->parent_ops)))
        {
            WARN("Failed to create volume parent, hr %#x.\n", hr);
            sub_resource->parent = ((void*)0);
            wined3d_texture_cleanup_sync(texture);
            return hr;
        }

        TRACE("parent %p, parent_ops %p.\n", parent, parent_ops);

        TRACE("Created volume level %u.\n", i);
    }

    return WINED3D_OK;
}
