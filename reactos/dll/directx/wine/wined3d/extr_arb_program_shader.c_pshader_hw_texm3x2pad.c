
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_register {TYPE_3__* idx; } ;
struct wined3d_shader_instruction {int * src; TYPE_2__* dst; TYPE_1__* ctx; } ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_5__ {struct wined3d_shader_register reg; } ;
struct TYPE_4__ {struct wined3d_string_buffer* buffer; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int shader_addline (struct wined3d_string_buffer*,char*,char*,scalar_t__,char*) ;
 int shader_arb_get_register_name (struct wined3d_shader_instruction const*,struct wined3d_shader_register*,char*,int *) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;

__attribute__((used)) static void pshader_hw_texm3x2pad(const struct wined3d_shader_instruction *ins)
{
    DWORD reg = ins->dst[0].reg.idx[0].offset;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char src0_name[50], dst_name[50];
    BOOL is_color;
    struct wined3d_shader_register tmp_reg = ins->dst[0].reg;

    shader_arb_get_src_param(ins, &ins->src[0], 0, src0_name);



    tmp_reg.idx[0].offset = reg + 1;
    shader_arb_get_register_name(ins, &tmp_reg, dst_name, &is_color);
    shader_addline(buffer, "DP3 %s.x, fragment.texcoord[%u], %s;\n", dst_name, reg, src0_name);
}
