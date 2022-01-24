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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wined3d_shader_instruction const*) ; 

__attribute__((used)) static void FUNC3(const struct wined3d_shader_instruction *ins)
{
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    struct glsl_src_param src2_param;
    DWORD write_mask;

    write_mask = FUNC2(ins->ctx->buffer, ins);
    FUNC1(ins, &ins->src[0], write_mask, &src0_param);
    FUNC1(ins, &ins->src[1], write_mask, &src1_param);
    FUNC1(ins, &ins->src[2], write_mask, &src2_param);
    FUNC0(ins->ctx->buffer, "(%s * %s) + %s);\n",
            src0_param.param_str, src1_param.param_str, src2_param.param_str);
}