#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wined3d_shader_tex_mx {scalar_t__ current_row; } ;
struct wined3d_shader_instruction {TYPE_4__* ctx; int /*<<< orphan*/ * src; TYPE_3__* dst; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct glsl_sample_function {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  buffer; struct wined3d_shader_tex_mx* tex_mx; } ;
struct TYPE_7__ {TYPE_1__* idx; } ;
struct TYPE_8__ {TYPE_2__ reg; } ;
struct TYPE_6__ {int offset; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3DSP_NOSWIZZLE ; 
 int WINED3DSP_WRITEMASK_0 ; 
 int WINED3DSP_WRITEMASK_1 ; 
 int WINED3DSP_WRITEMASK_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*,int,struct glsl_sample_function*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int,int /*<<< orphan*/ ,struct glsl_sample_function*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct glsl_sample_function*) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_shader_instruction *ins)
{
    DWORD src_mask = WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1 | WINED3DSP_WRITEMASK_2;
    struct wined3d_shader_tex_mx *tex_mx = ins->ctx->tex_mx;
    struct glsl_sample_function sample_function;
    DWORD reg = ins->dst[0].reg.idx[0].offset;
    struct glsl_src_param src0_param;

    FUNC1(ins, &ins->src[0], src_mask, &src0_param);
    FUNC0(ins->ctx->buffer, "tmp0.z = dot(T%u.xyz, %s);\n", reg, src0_param.param_str);

    /* Dependent read, not valid with conditional NP2 */
    FUNC3(ins->ctx, reg, reg, 0, &sample_function);

    /* Sample the texture using the calculated coordinates */
    FUNC2(ins, reg, &sample_function, WINED3DSP_NOSWIZZLE, NULL, NULL, NULL, NULL, "tmp0.xyz");
    FUNC4(ins->ctx, &sample_function);

    tex_mx->current_row = 0;
}