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
typedef  int UINT ;
struct TYPE_5__ {TYPE_1__* idx; } ;
struct TYPE_6__ {TYPE_2__ reg; } ;
struct TYPE_4__ {int offset; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  WINED3DSP_NOSWIZZLE ; 
 int WINED3DSP_WRITEMASK_0 ; 
 int WINED3DSP_WRITEMASK_1 ; 
 int WINED3DSP_WRITEMASK_2 ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*,int,struct glsl_sample_function*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct glsl_sample_function*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct glsl_sample_function*) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_shader_instruction *ins)
{
    DWORD src_mask = WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1 | WINED3DSP_WRITEMASK_2;
    DWORD sampler_idx = ins->dst[0].reg.idx[0].offset;
    struct glsl_sample_function sample_function;
    struct glsl_src_param src0_param;
    UINT mask_size;

    FUNC1(ins, &ins->src[0], src_mask, &src0_param);

    /* Do I have to take care about the projected bit? I don't think so, since the dp3 returns only one
     * scalar, and projected sampling would require 4.
     *
     * It is a dependent read - not valid with conditional NP2 textures
     */
    FUNC3(ins->ctx, sampler_idx, sampler_idx, 0, &sample_function);
    mask_size = FUNC4(sample_function.coord_mask);

    switch(mask_size)
    {
        case 1:
            FUNC2(ins, sampler_idx, &sample_function, WINED3DSP_NOSWIZZLE, NULL, NULL, NULL,
                    NULL, "dot(ffp_texcoord[%u].xyz, %s)", sampler_idx, src0_param.param_str);
            break;

        case 2:
            FUNC2(ins, sampler_idx, &sample_function, WINED3DSP_NOSWIZZLE, NULL, NULL, NULL,
                    NULL, "vec2(dot(ffp_texcoord[%u].xyz, %s), 0.0)", sampler_idx, src0_param.param_str);
            break;

        case 3:
            FUNC2(ins, sampler_idx, &sample_function, WINED3DSP_NOSWIZZLE, NULL, NULL, NULL,
                    NULL, "vec3(dot(ffp_texcoord[%u].xyz, %s), 0.0, 0.0)", sampler_idx, src0_param.param_str);
            break;

        default:
            FUNC0("Unexpected mask size %u\n", mask_size);
            break;
    }
    FUNC5(ins->ctx, &sample_function);
}