#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wined3d_shader_instruction {TYPE_4__* ctx; int /*<<< orphan*/ * src; TYPE_3__* dst; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_6__ {TYPE_1__* idx; } ;
struct TYPE_7__ {TYPE_2__ reg; } ;
struct TYPE_5__ {int offset; } ;
typedef  int DWORD ;

/* Variables and functions */
 int WINED3DSP_WRITEMASK_0 ; 
 int WINED3DSP_WRITEMASK_1 ; 
 int WINED3DSP_WRITEMASK_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,struct glsl_src_param*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct wined3d_shader_instruction const*) ; 
 unsigned int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
    DWORD src_mask = WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1 | WINED3DSP_WRITEMASK_2;
    DWORD dstreg = ins->dst[0].reg.idx[0].offset;
    struct glsl_src_param src0_param;
    DWORD dst_mask;
    unsigned int mask_size;

    dst_mask = FUNC2(ins->ctx->buffer, ins);
    mask_size = FUNC3(dst_mask);
    FUNC1(ins, &ins->src[0], src_mask, &src0_param);

    if (mask_size > 1) {
        FUNC0(ins->ctx->buffer, "vec%d(dot(T%u.xyz, %s)));\n", mask_size, dstreg, src0_param.param_str);
    } else {
        FUNC0(ins->ctx->buffer, "dot(T%u.xyz, %s));\n", dstreg, src0_param.param_str);
    }
}