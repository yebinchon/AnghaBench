
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wined3d_shader_reg_maps {TYPE_6__* resource_info; int sampler_map; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; int texel_offset; TYPE_5__* src; } ;
struct glsl_src_param {int * param_str; } ;
struct glsl_sample_function {int coord_mask; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_8__ {TYPE_1__* idx; } ;
struct TYPE_10__ {int swizzle; TYPE_2__ reg; } ;
struct TYPE_9__ {struct wined3d_shader_reg_maps* reg_maps; } ;
struct TYPE_7__ {unsigned int offset; } ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 unsigned int ARRAY_SIZE (TYPE_6__*) ;
 int ERR (char*,unsigned int) ;
 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_3 ;
 int WINED3D_GLSL_SAMPLE_LOAD ;
 int WINED3D_GLSL_SAMPLE_OFFSET ;
 unsigned int WINED3D_SAMPLER_DEFAULT ;
 scalar_t__ is_mipmapped (int ) ;
 scalar_t__ is_multisampled (int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,TYPE_5__*,int ,struct glsl_src_param*) ;
 unsigned int shader_glsl_find_sampler (int *,unsigned int,unsigned int) ;
 int shader_glsl_gen_sample_code (struct wined3d_shader_instruction const*,unsigned int,struct glsl_sample_function*,int ,int *,int *,int *,int *,char*,int *,...) ;
 int shader_glsl_get_sample_function (TYPE_3__*,unsigned int,unsigned int,int ,struct glsl_sample_function*) ;
 int shader_glsl_release_sample_function (TYPE_3__*,struct glsl_sample_function*) ;
 scalar_t__ wined3d_shader_instruction_has_texel_offset (struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_ld(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_reg_maps *reg_maps = ins->ctx->reg_maps;
    struct glsl_src_param coord_param, lod_param, sample_param;
    unsigned int resource_idx, sampler_idx, sampler_bind_idx;
    struct glsl_sample_function sample_function;
    DWORD flags = WINED3D_GLSL_SAMPLE_LOAD;
    BOOL has_lod_param;

    if (wined3d_shader_instruction_has_texel_offset(ins))
        flags |= WINED3D_GLSL_SAMPLE_OFFSET;

    resource_idx = ins->src[1].reg.idx[0].offset;
    sampler_idx = WINED3D_SAMPLER_DEFAULT;

    if (resource_idx >= ARRAY_SIZE(reg_maps->resource_info))
    {
        ERR("Invalid resource index %u.\n", resource_idx);
        return;
    }
    has_lod_param = is_mipmapped(reg_maps->resource_info[resource_idx].type);

    shader_glsl_get_sample_function(ins->ctx, resource_idx, sampler_idx, flags, &sample_function);
    shader_glsl_add_src_param(ins, &ins->src[0], sample_function.coord_mask, &coord_param);
    shader_glsl_add_src_param(ins, &ins->src[0], WINED3DSP_WRITEMASK_3, &lod_param);
    sampler_bind_idx = shader_glsl_find_sampler(&reg_maps->sampler_map, resource_idx, sampler_idx);
    if (is_multisampled(reg_maps->resource_info[resource_idx].type))
    {
        shader_glsl_add_src_param(ins, &ins->src[2], WINED3DSP_WRITEMASK_0, &sample_param);
        shader_glsl_gen_sample_code(ins, sampler_bind_idx, &sample_function, ins->src[1].swizzle,
                ((void*)0), ((void*)0), ((void*)0), &ins->texel_offset, "%s, %s", coord_param.param_str, sample_param.param_str);
    }
    else
    {
        shader_glsl_gen_sample_code(ins, sampler_bind_idx, &sample_function, ins->src[1].swizzle,
                ((void*)0), ((void*)0), has_lod_param ? lod_param.param_str : ((void*)0), &ins->texel_offset,
                "%s", coord_param.param_str);
    }
    shader_glsl_release_sample_function(ins->ctx, &sample_function);
}
