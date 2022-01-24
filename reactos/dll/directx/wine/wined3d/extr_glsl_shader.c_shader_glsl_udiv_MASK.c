#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int /*<<< orphan*/ * src; TYPE_3__* dst; TYPE_1__* ctx; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  data_type; } ;
struct TYPE_7__ {TYPE_2__ reg; } ;
struct TYPE_5__ {struct wined3d_string_buffer* buffer; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ WINED3DSPR_NULL ; 
 int /*<<< orphan*/  WINED3D_DATA_FLOAT ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param, src1_param;
    DWORD write_mask;

    if (ins->dst[0].reg.type != WINED3DSPR_NULL)
    {
        if (ins->dst[1].reg.type != WINED3DSPR_NULL)
        {
            char dst_mask[6];

            write_mask = FUNC3(&ins->dst[0], dst_mask);
            FUNC1(ins, &ins->src[0], write_mask, &src0_param);
            FUNC1(ins, &ins->src[1], write_mask, &src1_param);
            FUNC0(buffer, "tmp0%s = uintBitsToFloat(%s / %s);\n",
                    dst_mask, src0_param.param_str, src1_param.param_str);

            write_mask = FUNC2(buffer, ins, &ins->dst[1], ins->dst[1].reg.data_type);
            FUNC1(ins, &ins->src[0], write_mask, &src0_param);
            FUNC1(ins, &ins->src[1], write_mask, &src1_param);
            FUNC0(buffer, "%s %% %s);\n", src0_param.param_str, src1_param.param_str);

            FUNC2(buffer, ins, &ins->dst[0], WINED3D_DATA_FLOAT);
            FUNC0(buffer, "tmp0%s);\n", dst_mask);
        }
        else
        {
            write_mask = FUNC2(buffer, ins, &ins->dst[0], ins->dst[0].reg.data_type);
            FUNC1(ins, &ins->src[0], write_mask, &src0_param);
            FUNC1(ins, &ins->src[1], write_mask, &src1_param);
            FUNC0(buffer, "%s / %s);\n", src0_param.param_str, src1_param.param_str);
        }
    }
    else if (ins->dst[1].reg.type != WINED3DSPR_NULL)
    {
        write_mask = FUNC2(buffer, ins, &ins->dst[1], ins->dst[1].reg.data_type);
        FUNC1(ins, &ins->src[0], write_mask, &src0_param);
        FUNC1(ins, &ins->src[1], write_mask, &src1_param);
        FUNC0(buffer, "%s %% %s);\n", src0_param.param_str, src1_param.param_str);
    }
}