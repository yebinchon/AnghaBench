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
struct wined3d_shader_instruction {TYPE_3__* ctx; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; } ;
struct glsl_src_param {char* param_str; } ;
struct TYPE_6__ {int /*<<< orphan*/  buffer; TYPE_2__* reg_maps; } ;
struct TYPE_4__ {int major; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3DSP_WRITEMASK_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wined3d_shader_instruction const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_shader_instruction const*) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_shader_instruction *ins)
{
    if (ins->ctx->reg_maps->shader_version.major < 2)
    {
        struct glsl_src_param src_param;
        char dst_mask[6];

        FUNC1(ins, &ins->src[0], WINED3DSP_WRITEMASK_3, &src_param);

        FUNC0(ins->ctx->buffer, "tmp0.x = exp2(floor(%s));\n", src_param.param_str);
        FUNC0(ins->ctx->buffer, "tmp0.y = %s - floor(%s);\n", src_param.param_str, src_param.param_str);
        FUNC0(ins->ctx->buffer, "tmp0.z = exp2(%s);\n", src_param.param_str);
        FUNC0(ins->ctx->buffer, "tmp0.w = 1.0;\n");

        FUNC2(ins->ctx->buffer, ins);
        FUNC3(&ins->dst[0], dst_mask);
        FUNC0(ins->ctx->buffer, "tmp0%s);\n", dst_mask);
        return;
    }

    FUNC4(ins);
}