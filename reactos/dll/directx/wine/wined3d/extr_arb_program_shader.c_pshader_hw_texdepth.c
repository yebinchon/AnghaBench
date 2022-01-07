
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; struct wined3d_shader_dst_param* dst; } ;
struct wined3d_shader_dst_param {int dummy; } ;
struct TYPE_6__ {TYPE_2__* reg_maps; struct wined3d_string_buffer* buffer; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;


 int ARB_ONE ;
 int ARB_ZERO ;
 char* arb_get_helper_value (int ,int ) ;
 int shader_addline (struct wined3d_string_buffer*,char*,char const*,...) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ;

__attribute__((used)) static void pshader_hw_texdepth(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char dst_name[50];
    const char *zero = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_ZERO);
    const char *one = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_ONE);






    shader_arb_get_dst_param(ins, dst, dst_name);




    shader_addline(buffer, "MIN %s.y, %s.y, %s;\n", dst_name, dst_name, one);





    shader_addline(buffer, "RCP %s.y, %s.y;\n", dst_name, dst_name);
    shader_addline(buffer, "MUL TA.x, %s.x, %s.y;\n", dst_name, dst_name);
    shader_addline(buffer, "MIN TA.x, TA.x, %s;\n", one);
    shader_addline(buffer, "MAX result.depth, TA.x, %s;\n", zero);
}
