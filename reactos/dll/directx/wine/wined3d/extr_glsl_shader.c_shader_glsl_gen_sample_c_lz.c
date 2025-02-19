
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int type; } ;
struct wined3d_shader_texel_offset {int u; int v; int w; } ;
struct wined3d_shader_instruction {TYPE_3__* dst; TYPE_2__* ctx; struct wined3d_shader_texel_offset texel_offset; } ;
struct glsl_sample_function {scalar_t__ offset_size; int data_type; int deriv_mask; } ;
struct TYPE_6__ {int write_mask; } ;
struct TYPE_5__ {struct wined3d_string_buffer* buffer; TYPE_1__* reg_maps; } ;
struct TYPE_4__ {struct wined3d_shader_version shader_version; } ;


 int FALSE ;
 int WARN (char*) ;
 int WINED3DSP_NOSWIZZLE ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_glsl_append_dst_ext (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,TYPE_3__*,int ) ;
 int shader_glsl_append_imm_ivec (struct wined3d_string_buffer*,int*,scalar_t__) ;
 int shader_glsl_get_prefix (int ) ;
 int shader_glsl_swizzle_to_str (int ,int ,int ,char*) ;
 unsigned int wined3d_popcount (int ) ;

__attribute__((used)) static void shader_glsl_gen_sample_c_lz(const struct wined3d_shader_instruction *ins,
        unsigned int sampler_bind_idx, const struct glsl_sample_function *sample_function,
        unsigned int coord_size, const char *coord_param, const char *ref_param)
{
    const struct wined3d_shader_version *version = &ins->ctx->reg_maps->shader_version;
    unsigned int deriv_size = wined3d_popcount(sample_function->deriv_mask);
    const struct wined3d_shader_texel_offset *offset = &ins->texel_offset;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char dst_swizzle[6];

    WARN("Emitting textureGrad() for sample_c_lz.\n");

    shader_glsl_swizzle_to_str(WINED3DSP_NOSWIZZLE, FALSE, ins->dst[0].write_mask, dst_swizzle);
    shader_glsl_append_dst_ext(buffer, ins, &ins->dst[0], sample_function->data_type);
    shader_addline(buffer, "vec4(textureGrad%s(%s_sampler%u, vec%u(%s, %s), vec%u(0.0), vec%u(0.0)",
            sample_function->offset_size ? "Offset" : "",
            shader_glsl_get_prefix(version->type), sampler_bind_idx,
            coord_size, coord_param, ref_param, deriv_size, deriv_size);
    if (sample_function->offset_size)
    {
        int offset_immdata[4] = {offset->u, offset->v, offset->w};
        shader_addline(buffer, ", ");
        shader_glsl_append_imm_ivec(buffer, offset_immdata, sample_function->offset_size);
    }
    shader_addline(buffer, "))%s);\n", dst_swizzle);
}
