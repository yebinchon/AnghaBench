
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_2__* dst; int * src; TYPE_1__* ctx; } ;
struct TYPE_4__ {int reg; } ;
struct TYPE_3__ {struct wined3d_string_buffer* buffer; } ;
typedef int BOOL ;


 int shader_addline (struct wined3d_string_buffer*,char*,char*,char*,...) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,TYPE_2__*,char*) ;
 int shader_arb_get_modifier (struct wined3d_shader_instruction const*) ;
 int shader_arb_get_register_name (struct wined3d_shader_instruction const*,int *,char*,int *) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;

__attribute__((used)) static void shader_hw_dsy(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char src[50];
    char dst[50];
    char dst_name[50];
    BOOL is_color;

    shader_arb_get_dst_param(ins, &ins->dst[0], dst);
    shader_arb_get_src_param(ins, &ins->src[0], 0, src);
    shader_arb_get_register_name(ins, &ins->dst[0].reg, dst_name, &is_color);

    shader_addline(buffer, "DDY %s, %s;\n", dst, src);
    shader_addline(buffer, "MUL%s %s, %s, ycorrection.y;\n", shader_arb_get_modifier(ins), dst, dst_name);
}
