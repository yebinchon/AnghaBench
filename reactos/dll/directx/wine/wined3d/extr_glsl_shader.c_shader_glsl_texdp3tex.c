
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_shader_instruction {int ctx; int * src; TYPE_3__* dst; } ;
struct glsl_src_param {int param_str; } ;
struct glsl_sample_function {int coord_mask; } ;
typedef int UINT ;
struct TYPE_5__ {TYPE_1__* idx; } ;
struct TYPE_6__ {TYPE_2__ reg; } ;
struct TYPE_4__ {int offset; } ;
typedef int DWORD ;


 int FIXME (char*,int) ;
 int WINED3DSP_NOSWIZZLE ;
 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_1 ;
 int WINED3DSP_WRITEMASK_2 ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int,struct glsl_src_param*) ;
 int shader_glsl_gen_sample_code (struct wined3d_shader_instruction const*,int,struct glsl_sample_function*,int ,int *,int *,int *,int *,char*,int,int ) ;
 int shader_glsl_get_sample_function (int ,int,int,int ,struct glsl_sample_function*) ;
 int shader_glsl_get_write_mask_size (int ) ;
 int shader_glsl_release_sample_function (int ,struct glsl_sample_function*) ;

__attribute__((used)) static void shader_glsl_texdp3tex(const struct wined3d_shader_instruction *ins)
{
    DWORD src_mask = WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1 | WINED3DSP_WRITEMASK_2;
    DWORD sampler_idx = ins->dst[0].reg.idx[0].offset;
    struct glsl_sample_function sample_function;
    struct glsl_src_param src0_param;
    UINT mask_size;

    shader_glsl_add_src_param(ins, &ins->src[0], src_mask, &src0_param);






    shader_glsl_get_sample_function(ins->ctx, sampler_idx, sampler_idx, 0, &sample_function);
    mask_size = shader_glsl_get_write_mask_size(sample_function.coord_mask);

    switch(mask_size)
    {
        case 1:
            shader_glsl_gen_sample_code(ins, sampler_idx, &sample_function, WINED3DSP_NOSWIZZLE, ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), "dot(ffp_texcoord[%u].xyz, %s)", sampler_idx, src0_param.param_str);
            break;

        case 2:
            shader_glsl_gen_sample_code(ins, sampler_idx, &sample_function, WINED3DSP_NOSWIZZLE, ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), "vec2(dot(ffp_texcoord[%u].xyz, %s), 0.0)", sampler_idx, src0_param.param_str);
            break;

        case 3:
            shader_glsl_gen_sample_code(ins, sampler_idx, &sample_function, WINED3DSP_NOSWIZZLE, ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), "vec3(dot(ffp_texcoord[%u].xyz, %s), 0.0, 0.0)", sampler_idx, src0_param.param_str);
            break;

        default:
            FIXME("Unexpected mask size %u\n", mask_size);
            break;
    }
    shader_glsl_release_sample_function(ins->ctx, &sample_function);
}
