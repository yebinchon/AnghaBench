
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_3__* ctx; int * dst; int * src; } ;
struct glsl_src_param {char* param_str; } ;
struct TYPE_6__ {int buffer; TYPE_2__* reg_maps; } ;
struct TYPE_4__ {int major; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;


 int WINED3DSP_WRITEMASK_3 ;
 int shader_addline (int ,char*,...) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;
 int shader_glsl_append_dst (int ,struct wined3d_shader_instruction const*) ;
 int shader_glsl_get_write_mask (int *,char*) ;
 int shader_glsl_scalar_op (struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_expp(const struct wined3d_shader_instruction *ins)
{
    if (ins->ctx->reg_maps->shader_version.major < 2)
    {
        struct glsl_src_param src_param;
        char dst_mask[6];

        shader_glsl_add_src_param(ins, &ins->src[0], WINED3DSP_WRITEMASK_3, &src_param);

        shader_addline(ins->ctx->buffer, "tmp0.x = exp2(floor(%s));\n", src_param.param_str);
        shader_addline(ins->ctx->buffer, "tmp0.y = %s - floor(%s);\n", src_param.param_str, src_param.param_str);
        shader_addline(ins->ctx->buffer, "tmp0.z = exp2(%s);\n", src_param.param_str);
        shader_addline(ins->ctx->buffer, "tmp0.w = 1.0;\n");

        shader_glsl_append_dst(ins->ctx->buffer, ins);
        shader_glsl_get_write_mask(&ins->dst[0], dst_mask);
        shader_addline(ins->ctx->buffer, "tmp0%s);\n", dst_mask);
        return;
    }

    shader_glsl_scalar_op(ins);
}
