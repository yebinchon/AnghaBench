
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_4__* src; TYPE_1__* ctx; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_7__ {TYPE_2__* idx; } ;
struct TYPE_8__ {TYPE_3__ reg; } ;
struct TYPE_6__ {int offset; } ;
struct TYPE_5__ {int buffer; } ;


 int WINED3DSP_WRITEMASK_0 ;
 int shader_addline (int ,char*,int ,int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,TYPE_4__*,int ,struct glsl_src_param*) ;

__attribute__((used)) static void shader_glsl_callnz(const struct wined3d_shader_instruction *ins)
{
    struct glsl_src_param src1_param;

    shader_glsl_add_src_param(ins, &ins->src[1], WINED3DSP_WRITEMASK_0, &src1_param);
    shader_addline(ins->ctx->buffer, "if (%s) subroutine%u();\n",
            src1_param.param_str, ins->src[0].reg.idx[0].offset);
}
