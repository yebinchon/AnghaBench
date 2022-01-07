
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_1__* ctx; int * dst; } ;
struct glsl_dst_param {int reg_name; } ;
struct TYPE_2__ {int buffer; } ;


 int shader_addline (int ,char*,int ,int ) ;
 int shader_glsl_add_dst_param (struct wined3d_shader_instruction const*,int *,struct glsl_dst_param*) ;

__attribute__((used)) static void shader_glsl_texdepth(const struct wined3d_shader_instruction *ins)
{
    struct glsl_dst_param dst_param;

    shader_glsl_add_dst_param(ins, &ins->dst[0], &dst_param);







    shader_addline(ins->ctx->buffer, "gl_FragDepth = clamp((%s.x / min(%s.y, 1.0)), 0.0, 1.0);\n",
            dst_param.reg_name, dst_param.reg_name);
}
