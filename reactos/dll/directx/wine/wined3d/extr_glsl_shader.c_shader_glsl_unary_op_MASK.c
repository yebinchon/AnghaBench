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
#define  WINED3DSIH_INEG 129 
#define  WINED3DSIH_NOT 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wined3d_shader_instruction const*) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_shader_instruction *ins)
{
    struct glsl_src_param src_param;
    DWORD write_mask;
    const char *op;

    switch (ins->handler_idx)
    {
        case WINED3DSIH_INEG: op = "-"; break;
        case WINED3DSIH_NOT:  op = "~"; break;
        default:
            op = "<unhandled operator>";
            FUNC0("Unhandled opcode %s.\n",
                    FUNC1(ins->handler_idx));
            break;
    }

    write_mask = FUNC4(ins->ctx->buffer, ins);
    FUNC3(ins, &ins->src[0], write_mask, &src_param);
    FUNC2(ins->ctx->buffer, "%s%s);\n", op, src_param.param_str);
}