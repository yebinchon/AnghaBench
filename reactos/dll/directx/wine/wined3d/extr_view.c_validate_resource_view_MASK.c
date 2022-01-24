#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ level_idx; int level_count; unsigned int layer_count; unsigned int layer_idx; } ;
struct TYPE_12__ {unsigned int start_idx; unsigned int count; } ;
struct TYPE_14__ {TYPE_6__ texture; TYPE_5__ buffer; } ;
struct wined3d_view_desc {scalar_t__ format_id; int flags; TYPE_7__ u; } ;
struct wined3d_texture {unsigned int layer_count; scalar_t__ level_count; } ;
struct wined3d_resource {scalar_t__ type; struct wined3d_format const* format; int /*<<< orphan*/  usage; TYPE_2__* device; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {scalar_t__ id; unsigned int byte_count; } ;
struct TYPE_11__ {unsigned int size; } ;
struct TYPE_10__ {int structure_byte_stride; } ;
struct wined3d_buffer {TYPE_4__ resource; TYPE_3__ desc; } ;
struct TYPE_9__ {TYPE_1__* adapter; } ;
struct TYPE_8__ {struct wined3d_gl_info gl_info; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ WINED3DFMT_R32_TYPELESS ; 
 scalar_t__ WINED3DFMT_R32_UINT ; 
 scalar_t__ WINED3DFMT_UNKNOWN ; 
 scalar_t__ WINED3D_RTYPE_BUFFER ; 
 scalar_t__ WINED3D_RTYPE_TEXTURE_3D ; 
 int WINED3D_VIEW_BUFFER_RAW ; 
 struct wined3d_buffer* FUNC1 (struct wined3d_resource*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct wined3d_texture* FUNC3 (struct wined3d_resource*) ; 
 scalar_t__ FUNC4 (struct wined3d_format const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 struct wined3d_format* FUNC6 (struct wined3d_gl_info const*,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct wined3d_texture*,scalar_t__) ; 

__attribute__((used)) static const struct wined3d_format *FUNC8(const struct wined3d_view_desc *desc,
        struct wined3d_resource *resource, BOOL mip_slice, BOOL allow_srgb_toggle)
{
    const struct wined3d_gl_info *gl_info = &resource->device->adapter->gl_info;
    const struct wined3d_format *format;

    format = FUNC6(gl_info, desc->format_id, resource->usage);
    if (resource->type == WINED3D_RTYPE_BUFFER && (desc->flags & WINED3D_VIEW_BUFFER_RAW))
    {
        if (format->id != WINED3DFMT_R32_TYPELESS)
        {
            FUNC0("Invalid format %s for raw buffer view.\n", FUNC2(format->id));
            return NULL;
        }

        format = FUNC6(gl_info, WINED3DFMT_R32_UINT, resource->usage);
    }

    if (FUNC4(format))
    {
        FUNC0("Trying to create view for typeless format %s.\n", FUNC2(format->id));
        return NULL;
    }

    if (resource->type == WINED3D_RTYPE_BUFFER)
    {
        struct wined3d_buffer *buffer = FUNC1(resource);
        unsigned int buffer_size, element_size;

        if (buffer->desc.structure_byte_stride)
        {
            if (desc->format_id != WINED3DFMT_UNKNOWN)
            {
                FUNC0("Invalid format %s for structured buffer view.\n", FUNC2(desc->format_id));
                return NULL;
            }

            format = FUNC6(gl_info, WINED3DFMT_R32_UINT, resource->usage);
            element_size = buffer->desc.structure_byte_stride;
        }
        else
        {
            element_size = format->byte_count;
        }

        if (!element_size)
            return NULL;

        buffer_size = buffer->resource.size / element_size;
        if (desc->u.buffer.start_idx >= buffer_size
                || desc->u.buffer.count > buffer_size - desc->u.buffer.start_idx)
            return NULL;
    }
    else
    {
        struct wined3d_texture *texture = FUNC3(resource);
        unsigned int depth_or_layer_count;

        if (resource->format->id != format->id && !FUNC4(resource->format)
                && (!allow_srgb_toggle || !FUNC5(resource->format->id, format->id)))
        {
            FUNC0("Trying to create incompatible view for non typeless format %s.\n",
                    FUNC2(format->id));
            return NULL;
        }

        if (mip_slice && resource->type == WINED3D_RTYPE_TEXTURE_3D)
            depth_or_layer_count = FUNC7(texture, desc->u.texture.level_idx);
        else
            depth_or_layer_count = texture->layer_count;

        if (!desc->u.texture.level_count
                || (mip_slice && desc->u.texture.level_count != 1)
                || desc->u.texture.level_idx >= texture->level_count
                || desc->u.texture.level_count > texture->level_count - desc->u.texture.level_idx
                || !desc->u.texture.layer_count
                || desc->u.texture.layer_idx >= depth_or_layer_count
                || desc->u.texture.layer_count > depth_or_layer_count - desc->u.texture.layer_idx)
            return NULL;
    }

    return format;
}