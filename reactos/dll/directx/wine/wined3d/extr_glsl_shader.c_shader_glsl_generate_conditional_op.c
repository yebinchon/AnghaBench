
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_instruction {scalar_t__ flags; TYPE_1__* ctx; int * src; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_2__ {int buffer; } ;


 int WINED3DSP_WRITEMASK_0 ;
 scalar_t__ WINED3D_SHADER_CONDITIONAL_OP_NZ ;
 int shader_addline (int ,char*,char const*,int ,char const*) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;

__attribute__((used)) static void shader_glsl_generate_conditional_op(const struct wined3d_shader_instruction *ins,
        const char *op)
{
    struct glsl_src_param src_param;
    const char *condition;

    condition = ins->flags == WINED3D_SHADER_CONDITIONAL_OP_NZ ? "bool" : "!bool";
    shader_glsl_add_src_param(ins, &ins->src[0], WINED3DSP_WRITEMASK_0, &src_param);
    shader_addline(ins->ctx->buffer, "if (%s(%s)) %s\n", condition, src_param.param_str, op);
}
