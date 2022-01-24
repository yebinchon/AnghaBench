#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wined3d_shader_version {int /*<<< orphan*/  type; } ;
struct wined3d_shader_reg_maps {TYPE_6__* uav_resource_info; struct wined3d_shader_version shader_version; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; TYPE_4__* src; int /*<<< orphan*/ * dst; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
typedef  enum wined3d_shader_resource_type { ____Placeholder_wined3d_shader_resource_type } wined3d_shader_resource_type ;
typedef  enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
struct TYPE_12__ {int type; int data_type; unsigned int coord_size; } ;
struct TYPE_9__ {TYPE_1__* idx; } ;
struct TYPE_11__ {TYPE_2__ reg; } ;
struct TYPE_10__ {int /*<<< orphan*/  buffer; struct wined3d_shader_reg_maps* reg_maps; } ;
struct TYPE_8__ {unsigned int offset; } ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int WINED3D_SHADER_RESOURCE_TEXTURE_2D ; 
 TYPE_6__* resource_type_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,TYPE_4__*,unsigned int,struct glsl_src_param*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int,char*) ; 

__attribute__((used)) static void FUNC7(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_reg_maps *reg_maps = ins->ctx->reg_maps;
    const struct wined3d_shader_version *version = &reg_maps->shader_version;
    enum wined3d_shader_resource_type resource_type;
    struct glsl_src_param image_coord_param;
    enum wined3d_data_type data_type;
    DWORD coord_mask, write_mask;
    unsigned int uav_idx;
    char dst_swizzle[6];

    uav_idx = ins->src[1].reg.idx[0].offset;
    if (uav_idx >= FUNC0(reg_maps->uav_resource_info))
    {
        FUNC1("Invalid UAV index %u.\n", uav_idx);
        return;
    }
    resource_type = reg_maps->uav_resource_info[uav_idx].type;
    if (resource_type >= FUNC0(resource_type_info))
    {
        FUNC1("Unexpected resource type %#x.\n", resource_type);
        resource_type = WINED3D_SHADER_RESOURCE_TEXTURE_2D;
    }
    data_type = reg_maps->uav_resource_info[uav_idx].data_type;
    coord_mask = (1u << resource_type_info[resource_type].coord_size) - 1;

    write_mask = FUNC4(ins->ctx->buffer, ins, &ins->dst[0], data_type);
    FUNC6(&ins->src[1], FALSE, write_mask, dst_swizzle);

    FUNC3(ins, &ins->src[0], coord_mask, &image_coord_param);
    FUNC2(ins->ctx->buffer, "imageLoad(%s_image%u, %s)%s);\n",
            FUNC5(version->type), uav_idx, image_coord_param.param_str, dst_swizzle);
}