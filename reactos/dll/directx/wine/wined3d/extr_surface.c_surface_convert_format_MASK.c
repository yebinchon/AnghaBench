#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  map_binding; struct wined3d_device* device; struct wined3d_format* format; } ;
struct wined3d_texture {unsigned int level_count; TYPE_3__* sub_resources; TYPE_1__ resource; } ;
struct wined3d_resource_desc {int usage; int access; int depth; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ size; scalar_t__ multisample_quality; int /*<<< orphan*/  multisample_type; int /*<<< orphan*/  format; int /*<<< orphan*/  resource_type; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int* flags; int /*<<< orphan*/  id; scalar_t__ conv_byte_count; int /*<<< orphan*/  color_fixup; } ;
struct wined3d_device {scalar_t__ d3d_initialized; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int dummy; } ;
struct d3dfmt_converter_desc {int /*<<< orphan*/  (* convert ) (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {int /*<<< orphan*/  surface; } ;
struct TYPE_10__ {TYPE_2__ u; int /*<<< orphan*/  size; } ;
typedef  TYPE_4__ RECT ;
typedef  TYPE_5__ POINT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int WINED3DFMT_FLAG_COMPRESSED ; 
 int WINED3DUSAGE_PRIVATE ; 
 int WINED3DUSAGE_SCRATCH ; 
 size_t WINED3D_GL_RES_TYPE_TEX_2D ; 
 int /*<<< orphan*/  WINED3D_LOCATION_TEXTURE_RGB ; 
 int /*<<< orphan*/  WINED3D_MAP_READ ; 
 int /*<<< orphan*/  WINED3D_MAP_WRITE ; 
 int /*<<< orphan*/  WINED3D_MULTISAMPLE_NONE ; 
 int WINED3D_RESOURCE_ACCESS_CPU ; 
 int WINED3D_RESOURCE_ACCESS_MAP_R ; 
 int WINED3D_RESOURCE_ACCESS_MAP_W ; 
 int /*<<< orphan*/  WINED3D_RTYPE_TEXTURE_2D ; 
 int WINED3D_TEXTURE_CREATE_DISCARD ; 
 int WINED3D_TEXTURE_CREATE_MAPPABLE ; 
 struct wined3d_context* FUNC4 (struct wined3d_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct wined3d_context*,struct wined3d_bo_address*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context*,struct wined3d_bo_address*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct d3dfmt_converter_desc* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_bo_address*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wined3d_null_parent_ops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct wined3d_gl_info const*,struct wined3d_format const*,TYPE_4__*,unsigned int,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_device*,struct wined3d_resource_desc*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wined3d_texture**) ; 
 int /*<<< orphan*/  FUNC17 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct wined3d_texture*,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC21 (struct wined3d_texture*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct wined3d_texture*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wined3d_texture *FUNC25(struct wined3d_texture *src_texture,
        unsigned int sub_resource_idx, const struct wined3d_format *dst_format)
{
    unsigned int texture_level = sub_resource_idx % src_texture->level_count;
    const struct wined3d_format *src_format = src_texture->resource.format;
    struct wined3d_device *device = src_texture->resource.device;
    const struct d3dfmt_converter_desc *conv = NULL;
    const struct wined3d_gl_info *gl_info = NULL;
    unsigned int src_row_pitch, src_slice_pitch;
    struct wined3d_context *context = NULL;
    struct wined3d_texture *dst_texture;
    struct wined3d_bo_address src_data;
    struct wined3d_resource_desc desc;
    DWORD map_binding;

    if (!(conv = FUNC9(src_format->id, dst_format->id)) && (!device->d3d_initialized
            || !FUNC10(src_format->color_fixup) || src_format->conv_byte_count
            || !FUNC10(dst_format->color_fixup) || dst_format->conv_byte_count
            || (src_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED)))
    {
        FUNC2("Cannot find a conversion function from format %s to %s.\n",
                FUNC8(src_format->id), FUNC8(dst_format->id));
        return NULL;
    }

    /* FIXME: Multisampled conversion? */
    desc.resource_type = WINED3D_RTYPE_TEXTURE_2D;
    desc.format = dst_format->id;
    desc.multisample_type = WINED3D_MULTISAMPLE_NONE;
    desc.multisample_quality = 0;
    desc.usage = WINED3DUSAGE_SCRATCH | WINED3DUSAGE_PRIVATE;
    desc.access = WINED3D_RESOURCE_ACCESS_CPU | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
    desc.width = FUNC18(src_texture, texture_level);
    desc.height = FUNC17(src_texture, texture_level);
    desc.depth = 1;
    desc.size = 0;
    if (FUNC1(FUNC16(device, &desc, 1, 1,
            WINED3D_TEXTURE_CREATE_MAPPABLE | WINED3D_TEXTURE_CREATE_DISCARD,
            NULL, NULL, &wined3d_null_parent_ops, &dst_texture)))
    {
        FUNC0("Failed to create a destination texture for conversion.\n");
        return NULL;
    }

    if (device->d3d_initialized)
    {
        context = FUNC4(device, NULL, 0);
        gl_info = context->gl_info;
    }

    map_binding = src_texture->resource.map_binding;
    if (!FUNC22(src_texture, sub_resource_idx, context, map_binding))
        FUNC0("Failed to load the source sub-resource into %s.\n", FUNC13(map_binding));
    FUNC20(src_texture, texture_level, &src_row_pitch, &src_slice_pitch);
    FUNC19(src_texture, sub_resource_idx, &src_data, map_binding);

    if (conv)
    {
        unsigned int dst_row_pitch, dst_slice_pitch;
        struct wined3d_bo_address dst_data;
        const BYTE *src;
        BYTE *dst;

        map_binding = dst_texture->resource.map_binding;
        if (!FUNC22(dst_texture, 0, context, map_binding))
            FUNC0("Failed to load the destination sub-resource into %s.\n", FUNC13(map_binding));
        FUNC20(dst_texture, 0, &dst_row_pitch, &dst_slice_pitch);
        FUNC19(dst_texture, 0, &dst_data, map_binding);

        src = FUNC5(context, &src_data,
                src_texture->sub_resources[sub_resource_idx].size, GL_PIXEL_UNPACK_BUFFER, WINED3D_MAP_READ);
        dst = FUNC5(context,
                &dst_data, dst_texture->sub_resources[0].size, GL_PIXEL_UNPACK_BUFFER, WINED3D_MAP_WRITE);

        conv->convert(src, dst, src_row_pitch, dst_row_pitch, desc.width, desc.height);

        FUNC21(dst_texture, 0, ~map_binding);
        FUNC7(context, &dst_data, GL_PIXEL_UNPACK_BUFFER);
        FUNC7(context, &src_data, GL_PIXEL_UNPACK_BUFFER);
    }
    else
    {
        RECT src_rect = {0, 0, desc.width, desc.height};
        POINT dst_point = {0, 0};

        FUNC3("Using upload conversion.\n");

        FUNC23(dst_texture, context, FALSE);
        FUNC15(dst_texture, context, FALSE);
        FUNC14(dst_texture->sub_resources[0].u.surface, gl_info, src_format,
                &src_rect, src_row_pitch, &dst_point, FALSE, FUNC12(&src_data));

        FUNC24(dst_texture, 0, WINED3D_LOCATION_TEXTURE_RGB);
        FUNC21(dst_texture, 0, ~WINED3D_LOCATION_TEXTURE_RGB);
    }

    if (context)
        FUNC6(context);

    return dst_texture;
}