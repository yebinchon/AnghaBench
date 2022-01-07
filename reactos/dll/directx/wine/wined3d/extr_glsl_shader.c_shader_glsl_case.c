
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_1__* ctx; int * src; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_2__ {int buffer; } ;


 int WINED3DSP_WRITEMASK_0 ;
 int shader_addline (int ,char*,int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;

__attribute__((used)) static void shader_glsl_case(const struct wined3d_shader_instruction *ins)
{
    struct glsl_src_param src0_param;

    shader_glsl_add_src_param(ins, &ins->src[0], WINED3DSP_WRITEMASK_0, &src0_param);
    shader_addline(ins->ctx->buffer, "case %s:\n", src0_param.param_str);
}
