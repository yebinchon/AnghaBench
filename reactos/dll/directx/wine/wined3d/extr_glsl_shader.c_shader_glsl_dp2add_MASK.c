#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_shader_instruction {TYPE_1__* ctx; int /*<<< orphan*/ * src; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int WINED3DSP_WRITEMASK_0 ; 
 int WINED3DSP_WRITEMASK_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wined3d_shader_instruction const*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    struct glsl_src_param src2_param;
    DWORD write_mask;
    unsigned int mask_size;

    write_mask = FUNC2(ins->ctx->buffer, ins);
    mask_size = FUNC3(write_mask);

    FUNC1(ins, &ins->src[0], WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1, &src0_param);
    FUNC1(ins, &ins->src[1], WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1, &src1_param);
    FUNC1(ins, &ins->src[2], WINED3DSP_WRITEMASK_0, &src2_param);

    if (mask_size > 1) {
        FUNC0(ins->ctx->buffer, "vec%d(dot(%s, %s) + %s));\n",
                mask_size, src0_param.param_str, src1_param.param_str, src2_param.param_str);
    } else {
        FUNC0(ins->ctx->buffer, "dot(%s, %s) + %s);\n",
                src0_param.param_str, src1_param.param_str, src2_param.param_str);
    }
}