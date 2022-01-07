
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_1__* ctx; int * src; TYPE_3__* dst; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_8__ {TYPE_2__* idx; } ;
struct TYPE_7__ {TYPE_4__ reg; } ;
struct TYPE_6__ {int offset; } ;
struct TYPE_5__ {int buffer; } ;
typedef int DWORD ;


 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_1 ;
 int shader_addline (int ,char*,int ,int ,int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int,struct glsl_src_param*) ;
 int shader_glsl_append_dst (int ,struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_bem(const struct wined3d_shader_instruction *ins)
{
    DWORD sampler_idx = ins->dst[0].reg.idx[0].offset;
    struct glsl_src_param src0_param, src1_param;

    shader_glsl_add_src_param(ins, &ins->src[0], WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1, &src0_param);
    shader_glsl_add_src_param(ins, &ins->src[1], WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1, &src1_param);

    shader_glsl_append_dst(ins->ctx->buffer, ins);
    shader_addline(ins->ctx->buffer, "%s + bumpenv_mat%u * %s);\n",
            src0_param.param_str, sampler_idx, src1_param.param_str);
}
