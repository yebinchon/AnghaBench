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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int /*<<< orphan*/  type; } ;
struct wined3d_shader_texel_offset {int u; int v; int w; } ;
struct wined3d_shader_instruction {TYPE_3__* dst; TYPE_2__* ctx; struct wined3d_shader_texel_offset texel_offset; } ;
struct glsl_sample_function {scalar_t__ offset_size; int /*<<< orphan*/  data_type; int /*<<< orphan*/  deriv_mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  write_mask; } ;
struct TYPE_5__ {struct wined3d_string_buffer* buffer; TYPE_1__* reg_maps; } ;
struct TYPE_4__ {struct wined3d_shader_version shader_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  WINED3DSP_NOSWIZZLE ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_string_buffer*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct wined3d_shader_instruction *ins,
        unsigned int sampler_bind_idx, const struct glsl_sample_function *sample_function,
        unsigned int coord_size, const char *coord_param, const char *ref_param)
{
    const struct wined3d_shader_version *version = &ins->ctx->reg_maps->shader_version;
    unsigned int deriv_size = FUNC6(sample_function->deriv_mask);
    const struct wined3d_shader_texel_offset *offset = &ins->texel_offset;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char dst_swizzle[6];

    FUNC0("Emitting textureGrad() for sample_c_lz.\n");

    FUNC5(WINED3DSP_NOSWIZZLE, FALSE, ins->dst[0].write_mask, dst_swizzle);
    FUNC2(buffer, ins, &ins->dst[0], sample_function->data_type);
    FUNC1(buffer, "vec4(textureGrad%s(%s_sampler%u, vec%u(%s, %s), vec%u(0.0), vec%u(0.0)",
            sample_function->offset_size ? "Offset" : "",
            FUNC4(version->type), sampler_bind_idx,
            coord_size, coord_param, ref_param, deriv_size, deriv_size);
    if (sample_function->offset_size)
    {
        int offset_immdata[4] = {offset->u, offset->v, offset->w};
        FUNC1(buffer, ", ");
        FUNC3(buffer, offset_immdata, sample_function->offset_size);
    }
    FUNC1(buffer, "))%s);\n", dst_swizzle);
}