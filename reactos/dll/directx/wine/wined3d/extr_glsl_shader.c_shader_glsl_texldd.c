
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_3__* ctx; TYPE_5__* src; } ;
struct wined3d_gl_info {int * supported; } ;
struct glsl_src_param {int param_str; } ;
struct glsl_sample_function {int deriv_mask; int coord_mask; } ;
struct TYPE_7__ {TYPE_1__* idx; } ;
struct TYPE_9__ {TYPE_2__ reg; int swizzle; } ;
struct TYPE_8__ {struct wined3d_gl_info* gl_info; } ;
struct TYPE_6__ {int offset; } ;
typedef int DWORD ;


 size_t ARB_SHADER_TEXTURE_LOD ;
 int FIXME (char*) ;
 int WINED3D_GLSL_SAMPLE_GRAD ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,TYPE_5__*,int ,struct glsl_src_param*) ;
 int shader_glsl_gen_sample_code (struct wined3d_shader_instruction const*,int ,struct glsl_sample_function*,int ,int ,int ,int *,int *,char*,int ) ;
 int shader_glsl_get_sample_function (TYPE_3__*,int ,int ,int ,struct glsl_sample_function*) ;
 int shader_glsl_has_core_grad (struct wined3d_gl_info const*) ;
 int shader_glsl_release_sample_function (TYPE_3__*,struct glsl_sample_function*) ;
 int shader_glsl_tex (struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_texldd(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_gl_info *gl_info = ins->ctx->gl_info;
    struct glsl_src_param coord_param, dx_param, dy_param;
    struct glsl_sample_function sample_function;
    DWORD sampler_idx;
    DWORD swizzle = ins->src[1].swizzle;

    if (!shader_glsl_has_core_grad(gl_info) && !gl_info->supported[ARB_SHADER_TEXTURE_LOD])
    {
        FIXME("texldd used, but not supported by hardware. Falling back to regular tex.\n");
        shader_glsl_tex(ins);
        return;
    }

    sampler_idx = ins->src[1].reg.idx[0].offset;

    shader_glsl_get_sample_function(ins->ctx, sampler_idx, sampler_idx, WINED3D_GLSL_SAMPLE_GRAD, &sample_function);
    shader_glsl_add_src_param(ins, &ins->src[0], sample_function.coord_mask, &coord_param);
    shader_glsl_add_src_param(ins, &ins->src[2], sample_function.deriv_mask, &dx_param);
    shader_glsl_add_src_param(ins, &ins->src[3], sample_function.deriv_mask, &dy_param);

    shader_glsl_gen_sample_code(ins, sampler_idx, &sample_function, swizzle, dx_param.param_str, dy_param.param_str,
            ((void*)0), ((void*)0), "%s", coord_param.param_str);
    shader_glsl_release_sample_function(ins->ctx, &sample_function);
}
