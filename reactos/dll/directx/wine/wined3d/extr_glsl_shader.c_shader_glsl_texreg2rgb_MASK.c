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
struct wined3d_shader_instruction {int /*<<< orphan*/  ctx; int /*<<< orphan*/ * src; TYPE_3__* dst; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct glsl_sample_function {int /*<<< orphan*/  coord_mask; } ;
struct TYPE_5__ {TYPE_1__* idx; } ;
struct TYPE_6__ {TYPE_2__ reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  WINED3DSP_NOSWIZZLE ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ ,struct glsl_sample_function*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct glsl_sample_function*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct glsl_sample_function*) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
    DWORD sampler_idx = ins->dst[0].reg.idx[0].offset;
    struct glsl_sample_function sample_function;
    struct glsl_src_param src0_param;

    /* Dependent read, not valid with conditional NP2 */
    FUNC2(ins->ctx, sampler_idx, sampler_idx, 0, &sample_function);
    FUNC0(ins, &ins->src[0], sample_function.coord_mask, &src0_param);

    FUNC1(ins, sampler_idx, &sample_function, WINED3DSP_NOSWIZZLE, NULL, NULL, NULL, NULL,
            "%s", src0_param.param_str);
    FUNC3(ins->ctx, &sample_function);
}