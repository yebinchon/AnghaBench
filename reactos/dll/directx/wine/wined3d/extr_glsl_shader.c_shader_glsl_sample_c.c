
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wined3d_shader_resource_info {scalar_t__ type; } ;
struct wined3d_shader_instruction {scalar_t__ handler_idx; TYPE_3__* ctx; int texel_offset; TYPE_6__* src; } ;
struct glsl_src_param {int param_str; } ;
struct glsl_sample_function {int coord_mask; } ;
struct TYPE_10__ {TYPE_1__* idx; } ;
struct TYPE_11__ {TYPE_5__ reg; } ;
struct TYPE_9__ {TYPE_2__* reg_maps; } ;
struct TYPE_8__ {int sampler_map; } ;
struct TYPE_7__ {unsigned int offset; } ;
typedef int DWORD ;


 scalar_t__ WINED3DSIH_SAMPLE_C_LZ ;
 int WINED3DSP_NOSWIZZLE ;
 int WINED3DSP_WRITEMASK_0 ;
 int WINED3D_GLSL_SAMPLE_LOD ;
 int WINED3D_GLSL_SAMPLE_OFFSET ;
 scalar_t__ WINED3D_SHADER_RESOURCE_TEXTURE_2DARRAY ;
 scalar_t__ WINED3D_SHADER_RESOURCE_TEXTURE_CUBE ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,TYPE_6__*,int,struct glsl_src_param*) ;
 unsigned int shader_glsl_find_sampler (int *,unsigned int,unsigned int) ;
 int shader_glsl_gen_sample_c_lz (struct wined3d_shader_instruction const*,unsigned int,struct glsl_sample_function*,unsigned int,int ,int ) ;
 int shader_glsl_gen_sample_code (struct wined3d_shader_instruction const*,unsigned int,struct glsl_sample_function*,int ,int *,int *,char const*,int *,char*,unsigned int,int ,int ) ;
 struct wined3d_shader_resource_info* shader_glsl_get_resource_info (struct wined3d_shader_instruction const*,TYPE_5__*) ;
 int shader_glsl_get_sample_function (TYPE_3__*,unsigned int,unsigned int,int ,struct glsl_sample_function*) ;
 unsigned int shader_glsl_get_write_mask_size (int) ;
 int shader_glsl_release_sample_function (TYPE_3__*,struct glsl_sample_function*) ;
 scalar_t__ wined3d_shader_instruction_has_texel_offset (struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_sample_c(const struct wined3d_shader_instruction *ins)
{
    unsigned int resource_idx, sampler_idx, sampler_bind_idx;
    const struct wined3d_shader_resource_info *resource_info;
    struct glsl_src_param coord_param, compare_param;
    struct glsl_sample_function sample_function;
    const char *lod_param = ((void*)0);
    unsigned int coord_size;
    DWORD flags = 0;

    if (ins->handler_idx == WINED3DSIH_SAMPLE_C_LZ)
    {
        lod_param = "0";
        flags |= WINED3D_GLSL_SAMPLE_LOD;
    }

    if (wined3d_shader_instruction_has_texel_offset(ins))
        flags |= WINED3D_GLSL_SAMPLE_OFFSET;

    if (!(resource_info = shader_glsl_get_resource_info(ins, &ins->src[1].reg)))
        return;
    resource_idx = ins->src[1].reg.idx[0].offset;
    sampler_idx = ins->src[2].reg.idx[0].offset;

    shader_glsl_get_sample_function(ins->ctx, resource_idx, sampler_idx, flags, &sample_function);
    coord_size = shader_glsl_get_write_mask_size(sample_function.coord_mask);
    shader_glsl_add_src_param(ins, &ins->src[0], sample_function.coord_mask >> 1, &coord_param);
    shader_glsl_add_src_param(ins, &ins->src[3], WINED3DSP_WRITEMASK_0, &compare_param);
    sampler_bind_idx = shader_glsl_find_sampler(&ins->ctx->reg_maps->sampler_map, resource_idx, sampler_idx);
    if (ins->handler_idx == WINED3DSIH_SAMPLE_C_LZ
            && (resource_info->type == WINED3D_SHADER_RESOURCE_TEXTURE_2DARRAY
            || resource_info->type == WINED3D_SHADER_RESOURCE_TEXTURE_CUBE))
    {
        shader_glsl_gen_sample_c_lz(ins, sampler_bind_idx, &sample_function,
                coord_size, coord_param.param_str, compare_param.param_str);
    }
    else
    {
        shader_glsl_gen_sample_code(ins, sampler_bind_idx, &sample_function, WINED3DSP_NOSWIZZLE,
                ((void*)0), ((void*)0), lod_param, &ins->texel_offset, "vec%u(%s, %s)",
                coord_size, coord_param.param_str, compare_param.param_str);
    }
    shader_glsl_release_sample_function(ins->ctx, &sample_function);
}
