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
struct wined3d_shader_instruction {int handler_idx; TYPE_1__* ctx; int /*<<< orphan*/ * src; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  WINED3DSIH_SGE 129 
#define  WINED3DSIH_SLT 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wined3d_shader_instruction const*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_shader_instruction *ins)
{
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    DWORD write_mask;
    unsigned int mask_size;

    write_mask = FUNC4(ins->ctx->buffer, ins);
    mask_size = FUNC5(write_mask);
    FUNC3(ins, &ins->src[0], write_mask, &src0_param);
    FUNC3(ins, &ins->src[1], write_mask, &src1_param);

    if (mask_size > 1) {
        const char *compare;

        switch(ins->handler_idx)
        {
            case WINED3DSIH_SLT: compare = "lessThan"; break;
            case WINED3DSIH_SGE: compare = "greaterThanEqual"; break;
            default: compare = "";
                FUNC0("Can't handle opcode %s.\n", FUNC1(ins->handler_idx));
        }

        FUNC2(ins->ctx->buffer, "vec%d(%s(%s, %s)));\n", mask_size, compare,
                src0_param.param_str, src1_param.param_str);
    } else {
        switch(ins->handler_idx)
        {
            case WINED3DSIH_SLT:
                /* Step(src0, src1) is not suitable here because if src0 == src1 SLT is supposed,
                 * to return 0.0 but step returns 1.0 because step is not < x
                 * An alternative is a bvec compare padded with an unused second component.
                 * step(src1 * -1.0, src0 * -1.0) is not an option because it suffers from the same
                 * issue. Playing with not() is not possible either because not() does not accept
                 * a scalar.
                 */
                FUNC2(ins->ctx->buffer, "(%s < %s) ? 1.0 : 0.0);\n",
                        src0_param.param_str, src1_param.param_str);
                break;
            case WINED3DSIH_SGE:
                /* Here we can use the step() function and safe a conditional */
                FUNC2(ins->ctx->buffer, "step(%s, %s));\n", src1_param.param_str, src0_param.param_str);
                break;
            default:
                FUNC0("Can't handle opcode %s.\n", FUNC1(ins->handler_idx));
        }

    }
}