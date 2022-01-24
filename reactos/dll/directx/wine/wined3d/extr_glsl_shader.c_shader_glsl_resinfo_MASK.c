#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int /*<<< orphan*/  type; } ;
struct wined3d_shader_instruction {scalar_t__ flags; TYPE_8__* src; TYPE_9__* dst; TYPE_7__* ctx; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
struct glsl_src_param {char* param_str; } ;
typedef  enum wined3d_shader_resource_type { ____Placeholder_wined3d_shader_resource_type } wined3d_shader_resource_type ;
typedef  enum wined3d_shader_register_type { ____Placeholder_wined3d_shader_register_type } wined3d_shader_register_type ;
typedef  enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
struct TYPE_14__ {int data_type; } ;
struct TYPE_22__ {TYPE_1__ reg; } ;
struct TYPE_16__ {int type; TYPE_2__* idx; } ;
struct TYPE_21__ {TYPE_3__ reg; } ;
struct TYPE_20__ {TYPE_6__* reg_maps; struct wined3d_string_buffer* buffer; struct wined3d_gl_info* gl_info; } ;
struct TYPE_19__ {TYPE_5__* uav_resource_info; int /*<<< orphan*/  sampler_map; TYPE_4__* resource_info; struct wined3d_shader_version shader_version; } ;
struct TYPE_18__ {int type; } ;
struct TYPE_17__ {int type; } ;
struct TYPE_15__ {unsigned int offset; } ;
struct TYPE_13__ {int resinfo_size; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 size_t ARB_TEXTURE_QUERY_LEVELS ; 
 int FUNC0 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ WINED3DSI_RESINFO_UINT ; 
 int WINED3DSPR_RESOURCE ; 
 int WINED3DSPR_UAV ; 
 int /*<<< orphan*/  WINED3DSP_WRITEMASK_0 ; 
 int WINED3D_DATA_UINT ; 
 int /*<<< orphan*/  WINED3D_SAMPLER_DEFAULT ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_11__* resource_type_info ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_shader_instruction const*,TYPE_8__*,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,TYPE_9__*,int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_version *version = &ins->ctx->reg_maps->shader_version;
    const struct wined3d_gl_info *gl_info = ins->ctx->gl_info;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    enum wined3d_shader_resource_type resource_type;
    enum wined3d_shader_register_type reg_type;
    unsigned int resource_idx, bind_idx, i;
    enum wined3d_data_type dst_data_type;
    struct glsl_src_param lod_param;
    BOOL supports_mipmaps;
    char dst_swizzle[6];
    DWORD write_mask;

    dst_data_type = ins->dst[0].reg.data_type;
    if (ins->flags == WINED3DSI_RESINFO_UINT)
        dst_data_type = WINED3D_DATA_UINT;
    else if (ins->flags)
        FUNC2("Unhandled flags %#x.\n", ins->flags);

    reg_type = ins->src[1].reg.type;
    resource_idx = ins->src[1].reg.idx[0].offset;
    FUNC5(ins, &ins->src[0], WINED3DSP_WRITEMASK_0, &lod_param);
    if (reg_type == WINED3DSPR_RESOURCE)
    {
        resource_type = ins->ctx->reg_maps->resource_info[resource_idx].type;
        bind_idx = FUNC7(&ins->ctx->reg_maps->sampler_map,
                resource_idx, WINED3D_SAMPLER_DEFAULT);
    }
    else
    {
        resource_type = ins->ctx->reg_maps->uav_resource_info[resource_idx].type;
        bind_idx = resource_idx;
    }

    if (resource_type >= FUNC0(resource_type_info))
    {
        FUNC1("Unexpected resource type %#x.\n", resource_type);
        return;
    }

    write_mask = FUNC6(buffer, ins, &ins->dst[0], dst_data_type);
    FUNC9(&ins->src[1], FALSE, write_mask, dst_swizzle);

    if (dst_data_type == WINED3D_DATA_UINT)
        FUNC4(buffer, "uvec4(");
    else
        FUNC4(buffer, "vec4(");

    if (reg_type == WINED3DSPR_RESOURCE)
    {
        FUNC4(buffer, "textureSize(%s_sampler%u",
                FUNC8(version->type), bind_idx);
    }
    else
    {
        FUNC4(buffer, "imageSize(%s_image%u",
                FUNC8(version->type), bind_idx);
    }

    supports_mipmaps = FUNC3(resource_type) && reg_type != WINED3DSPR_UAV;
    if (supports_mipmaps)
        FUNC4(buffer, ", %s", lod_param.param_str);
    FUNC4(buffer, "), ");

    for (i = 0; i < 3 - resource_type_info[resource_type].resinfo_size; ++i)
        FUNC4(buffer, "0, ");

    if (supports_mipmaps)
    {
        if (gl_info->supported[ARB_TEXTURE_QUERY_LEVELS])
        {
            FUNC4(buffer, "textureQueryLevels(%s_sampler%u)",
                    FUNC8(version->type), bind_idx);
        }
        else
        {
            FUNC2("textureQueryLevels is not supported, returning 1 level.\n");
            FUNC4(buffer, "1");
        }
    }
    else
    {
        FUNC4(buffer, "1");
    }

    FUNC4(buffer, ")%s);\n", dst_swizzle);
}