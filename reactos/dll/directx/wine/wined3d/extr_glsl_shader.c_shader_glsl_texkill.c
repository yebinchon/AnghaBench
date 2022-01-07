
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_3__* ctx; int * dst; } ;
struct glsl_dst_param {int reg_name; } ;
struct TYPE_6__ {int buffer; TYPE_2__* reg_maps; } ;
struct TYPE_4__ {int major; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;


 int shader_addline (int ,char*,int ) ;
 int shader_glsl_add_dst_param (struct wined3d_shader_instruction const*,int *,struct glsl_dst_param*) ;
 int shader_glsl_generate_conditional_op (struct wined3d_shader_instruction const*,char*) ;

__attribute__((used)) static void shader_glsl_texkill(const struct wined3d_shader_instruction *ins)
{
    if (ins->ctx->reg_maps->shader_version.major >= 4)
    {
        shader_glsl_generate_conditional_op(ins, "discard;");
    }
    else
    {
        struct glsl_dst_param dst_param;


        shader_glsl_add_dst_param(ins, &ins->dst[0], &dst_param);


        if (ins->ctx->reg_maps->shader_version.major >= 2)
            shader_addline(ins->ctx->buffer, "if (any(lessThan(%s.xyzw, vec4(0.0)))) discard;\n", dst_param.reg_name);




        else
            shader_addline(ins->ctx->buffer, "if (any(lessThan(%s.xyz, vec3(0.0)))) discard;\n", dst_param.reg_name);
    }
}
