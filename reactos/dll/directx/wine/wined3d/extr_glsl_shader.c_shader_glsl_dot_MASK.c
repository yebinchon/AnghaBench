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
struct wined3d_shader_instruction {scalar_t__ handler_idx; int /*<<< orphan*/ * src; TYPE_1__* ctx; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ WINED3DSIH_DP3 ; 
 scalar_t__ WINED3DSIH_DP4 ; 
 int WINED3DSP_WRITEMASK_0 ; 
 int WINED3DSP_WRITEMASK_1 ; 
 int WINED3DSP_WRITEMASK_2 ; 
 int WINED3DSP_WRITEMASK_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,struct glsl_src_param*) ; 
 int FUNC2 (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*) ; 
 unsigned int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    DWORD dst_write_mask, src_write_mask;
    unsigned int dst_size;

    dst_write_mask = FUNC2(buffer, ins);
    dst_size = FUNC3(dst_write_mask);

    /* dp4 works on vec4, dp3 on vec3, etc. */
    if (ins->handler_idx == WINED3DSIH_DP4)
        src_write_mask = WINED3DSP_WRITEMASK_ALL;
    else if (ins->handler_idx == WINED3DSIH_DP3)
        src_write_mask = WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1 | WINED3DSP_WRITEMASK_2;
    else
        src_write_mask = WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1;

    FUNC1(ins, &ins->src[0], src_write_mask, &src0_param);
    FUNC1(ins, &ins->src[1], src_write_mask, &src1_param);

    if (dst_size > 1) {
        FUNC0(buffer, "vec%d(dot(%s, %s)));\n", dst_size, src0_param.param_str, src1_param.param_str);
    } else {
        FUNC0(buffer, "dot(%s, %s));\n", src0_param.param_str, src1_param.param_str);
    }
}