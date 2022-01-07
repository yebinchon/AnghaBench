
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wined3d_shader_version {scalar_t__ type; } ;
struct wined3d_shader_instruction {TYPE_5__* ctx; TYPE_7__* src; } ;
struct wined3d_gl_info {int * supported; } ;
struct glsl_src_param {int param_str; } ;
struct glsl_sample_function {TYPE_4__* name; int coord_mask; } ;
struct TYPE_10__ {TYPE_2__* idx; } ;
struct TYPE_13__ {TYPE_3__ reg; int swizzle; } ;
struct TYPE_12__ {struct wined3d_gl_info* gl_info; TYPE_1__* reg_maps; } ;
struct TYPE_11__ {int buffer; } ;
struct TYPE_9__ {int offset; } ;
struct TYPE_8__ {struct wined3d_shader_version shader_version; } ;
typedef int DWORD ;


 size_t ARB_SHADER_TEXTURE_LOD ;
 int WARN (char*,int ) ;
 int WINED3DSP_WRITEMASK_3 ;
 int WINED3D_GLSL_SAMPLE_LOD ;
 scalar_t__ WINED3D_SHADER_TYPE_PIXEL ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,TYPE_7__*,int ,struct glsl_src_param*) ;
 int shader_glsl_gen_sample_code (struct wined3d_shader_instruction const*,int ,struct glsl_sample_function*,int ,int *,int *,int ,int *,char*,int ) ;
 int shader_glsl_get_sample_function (TYPE_5__*,int ,int ,int ,struct glsl_sample_function*) ;
 int shader_glsl_has_core_grad (struct wined3d_gl_info const*) ;
 int shader_glsl_release_sample_function (TYPE_5__*,struct glsl_sample_function*) ;

__attribute__((used)) static void shader_glsl_texldl(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_version *shader_version = &ins->ctx->reg_maps->shader_version;
    const struct wined3d_gl_info *gl_info = ins->ctx->gl_info;
    struct glsl_src_param coord_param, lod_param;
    struct glsl_sample_function sample_function;
    DWORD swizzle = ins->src[1].swizzle;
    DWORD sampler_idx;

    sampler_idx = ins->src[1].reg.idx[0].offset;

    shader_glsl_get_sample_function(ins->ctx, sampler_idx, sampler_idx, WINED3D_GLSL_SAMPLE_LOD, &sample_function);
    shader_glsl_add_src_param(ins, &ins->src[0], sample_function.coord_mask, &coord_param);

    shader_glsl_add_src_param(ins, &ins->src[0], WINED3DSP_WRITEMASK_3, &lod_param);

    if (shader_version->type == WINED3D_SHADER_TYPE_PIXEL && !shader_glsl_has_core_grad(gl_info)
            && !gl_info->supported[ARB_SHADER_TEXTURE_LOD])
    {



        WARN("Using %s in fragment shader.\n", sample_function.name->buffer);
    }
    shader_glsl_gen_sample_code(ins, sampler_idx, &sample_function, swizzle, ((void*)0), ((void*)0), lod_param.param_str, ((void*)0),
            "%s", coord_param.param_str);
    shader_glsl_release_sample_function(ins->ctx, &sample_function);
}
