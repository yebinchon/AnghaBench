
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_tex_mx {scalar_t__ current_row; } ;
struct wined3d_shader_instruction {TYPE_4__* ctx; int * src; TYPE_3__* dst; } ;
struct glsl_src_param {int param_str; } ;
struct glsl_sample_function {int coord_mask; } ;
struct TYPE_9__ {struct wined3d_shader_tex_mx* tex_mx; struct wined3d_string_buffer* buffer; } ;
struct TYPE_7__ {TYPE_1__* idx; } ;
struct TYPE_8__ {TYPE_2__ reg; } ;
struct TYPE_6__ {int offset; } ;
typedef int DWORD ;


 int WINED3DSP_NOSWIZZLE ;
 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_1 ;
 int WINED3DSP_WRITEMASK_2 ;
 int shader_addline (struct wined3d_string_buffer*,char*,int,...) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int,struct glsl_src_param*) ;
 int shader_glsl_gen_sample_code (struct wined3d_shader_instruction const*,int,struct glsl_sample_function*,int ,int *,int *,int *,int *,char*,char*) ;
 int shader_glsl_get_sample_function (TYPE_4__*,int,int,int ,struct glsl_sample_function*) ;
 int shader_glsl_release_sample_function (TYPE_4__*,struct glsl_sample_function*) ;
 int shader_glsl_write_mask_to_str (int ,char*) ;

__attribute__((used)) static void shader_glsl_texm3x3spec(const struct wined3d_shader_instruction *ins)
{
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct wined3d_shader_tex_mx *tex_mx = ins->ctx->tex_mx;
    DWORD src_mask = WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1 | WINED3DSP_WRITEMASK_2;
    struct glsl_sample_function sample_function;
    DWORD reg = ins->dst[0].reg.idx[0].offset;
    char coord_mask[6];

    shader_glsl_add_src_param(ins, &ins->src[0], src_mask, &src0_param);
    shader_glsl_add_src_param(ins, &ins->src[1], src_mask, &src1_param);


    shader_addline(buffer, "tmp0.z = dot(T%u.xyz, %s);\n", reg, src0_param.param_str);

    shader_addline(buffer, "tmp0.xyz = -reflect((%s), normalize(tmp0.xyz));\n", src1_param.param_str);


    shader_glsl_get_sample_function(ins->ctx, reg, reg, 0, &sample_function);
    shader_glsl_write_mask_to_str(sample_function.coord_mask, coord_mask);


    shader_glsl_gen_sample_code(ins, reg, &sample_function, WINED3DSP_NOSWIZZLE,
            ((void*)0), ((void*)0), ((void*)0), ((void*)0), "tmp0%s", coord_mask);
    shader_glsl_release_sample_function(ins->ctx, &sample_function);

    tex_mx->current_row = 0;
}
