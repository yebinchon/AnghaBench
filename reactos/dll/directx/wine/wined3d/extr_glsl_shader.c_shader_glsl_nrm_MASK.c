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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int /*<<< orphan*/ * src; int /*<<< orphan*/  dst; TYPE_1__* ctx; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src_param;
    unsigned int mask_size;
    DWORD write_mask;
    char dst_mask[6];

    write_mask = FUNC3(ins->dst, dst_mask);
    mask_size = FUNC4(write_mask);
    FUNC1(ins, &ins->src[0], write_mask, &src_param);

    FUNC0(buffer, "tmp0.x = dot(%s, %s);\n",
            src_param.param_str, src_param.param_str);
    FUNC2(buffer, ins);

    if (mask_size > 1)
    {
        FUNC0(buffer, "tmp0.x == 0.0 ? vec%u(0.0) : (%s * inversesqrt(tmp0.x)));\n",
                mask_size, src_param.param_str);
    }
    else
    {
        FUNC0(buffer, "tmp0.x == 0.0 ? 0.0 : (%s * inversesqrt(tmp0.x)));\n",
                src_param.param_str);
    }
}