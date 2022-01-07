
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {struct wined3d_shader_dst_param* dst; int * src; TYPE_1__* ctx; } ;
struct TYPE_6__ {TYPE_2__* idx; } ;
struct wined3d_shader_dst_param {TYPE_3__ reg; } ;
struct TYPE_5__ {int offset; } ;
struct TYPE_4__ {struct wined3d_string_buffer* buffer; } ;
typedef int BOOL ;


 int shader_addline (struct wined3d_string_buffer*,char*,char*,char*,...) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ;
 int shader_arb_get_register_name (struct wined3d_shader_instruction const*,TYPE_3__*,char*,int *) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;

__attribute__((used)) static void pshader_hw_texm3x3(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char dst_str[50], dst_name[50];
    char src0[50];
    BOOL is_color;

    shader_arb_get_dst_param(ins, dst, dst_str);
    shader_arb_get_src_param(ins, &ins->src[0], 0, src0);
    shader_arb_get_register_name(ins, &ins->dst[0].reg, dst_name, &is_color);
    shader_addline(buffer, "DP3 %s.z, fragment.texcoord[%u], %s;\n", dst_name, dst->reg.idx[0].offset, src0);
    shader_addline(buffer, "MOV %s, %s;\n", dst_str, dst_name);
}
