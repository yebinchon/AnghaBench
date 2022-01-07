
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {struct wined3d_shader_dst_param* dst; int * src; TYPE_3__* ctx; } ;
struct TYPE_10__ {TYPE_4__* idx; } ;
struct wined3d_shader_dst_param {TYPE_5__ reg; } ;
struct TYPE_9__ {int offset; } ;
struct TYPE_8__ {TYPE_2__* reg_maps; struct wined3d_string_buffer* buffer; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_7__ {TYPE_1__ shader_version; } ;
typedef int BOOL ;


 int ARB_ONE ;
 int ARB_ZERO ;
 char* arb_get_helper_value (int ,int ) ;
 int shader_addline (struct wined3d_string_buffer*,char*,char*,char const*,...) ;
 int shader_arb_get_register_name (struct wined3d_shader_instruction const*,TYPE_5__*,char*,int *) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;

__attribute__((used)) static void pshader_hw_texm3x2depth(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];
    char src0[50], dst_name[50];
    BOOL is_color;
    const char *zero = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_ZERO);
    const char *one = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_ONE);

    shader_arb_get_src_param(ins, &ins->src[0], 0, src0);
    shader_arb_get_register_name(ins, &ins->dst[0].reg, dst_name, &is_color);
    shader_addline(buffer, "DP3 %s.y, fragment.texcoord[%u], %s;\n", dst_name, dst->reg.idx[0].offset, src0);





    shader_addline(buffer, "RCP %s.y, %s.y;\n", dst_name, dst_name);
    shader_addline(buffer, "MUL %s.x, %s.x, %s.y;\n", dst_name, dst_name, dst_name);
    shader_addline(buffer, "MIN %s.x, %s.x, %s;\n", dst_name, dst_name, one);
    shader_addline(buffer, "MAX result.depth, %s.x, %s;\n", dst_name, zero);
}
