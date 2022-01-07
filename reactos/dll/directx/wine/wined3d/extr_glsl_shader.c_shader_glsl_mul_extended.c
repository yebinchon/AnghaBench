
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_2__* ctx; int * src; TYPE_3__* dst; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_4__ {scalar_t__ type; int data_type; } ;
struct TYPE_6__ {TYPE_1__ reg; } ;
struct TYPE_5__ {struct wined3d_string_buffer* buffer; } ;
typedef int DWORD ;


 int FIXME (char*) ;
 scalar_t__ WINED3DSPR_NULL ;
 int shader_addline (struct wined3d_string_buffer*,char*,int ,int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;
 int shader_glsl_append_dst_ext (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,TYPE_3__*,int ) ;

__attribute__((used)) static void shader_glsl_mul_extended(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    DWORD write_mask;



    if (ins->dst[0].reg.type != WINED3DSPR_NULL)
        FIXME("64-bit integer multiplies not implemented.\n");

    if (ins->dst[1].reg.type != WINED3DSPR_NULL)
    {
        write_mask = shader_glsl_append_dst_ext(buffer, ins, &ins->dst[1], ins->dst[1].reg.data_type);
        shader_glsl_add_src_param(ins, &ins->src[0], write_mask, &src0_param);
        shader_glsl_add_src_param(ins, &ins->src[1], write_mask, &src1_param);

        shader_addline(ins->ctx->buffer, "%s * %s);\n",
                src0_param.param_str, src1_param.param_str);
    }
}
