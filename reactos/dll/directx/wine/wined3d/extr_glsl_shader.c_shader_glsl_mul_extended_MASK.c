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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_2__* ctx; int /*<<< orphan*/ * src; TYPE_3__* dst; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  data_type; } ;
struct TYPE_6__ {TYPE_1__ reg; } ;
struct TYPE_5__ {struct wined3d_string_buffer* buffer; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ WINED3DSPR_NULL ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    DWORD write_mask;

    /* If we have ARB_gpu_shader5, we can use imulExtended() / umulExtended().
     * If not, we can emulate it. */
    if (ins->dst[0].reg.type != WINED3DSPR_NULL)
        FUNC0("64-bit integer multiplies not implemented.\n");

    if (ins->dst[1].reg.type != WINED3DSPR_NULL)
    {
        write_mask = FUNC3(buffer, ins, &ins->dst[1], ins->dst[1].reg.data_type);
        FUNC2(ins, &ins->src[0], write_mask, &src0_param);
        FUNC2(ins, &ins->src[1], write_mask, &src1_param);

        FUNC1(ins->ctx->buffer, "%s * %s);\n",
                src0_param.param_str, src1_param.param_str);
    }
}