
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int * src; TYPE_1__* ctx; struct wined3d_shader_dst_param* dst; } ;
struct TYPE_6__ {TYPE_2__* idx; } ;
struct wined3d_shader_dst_param {TYPE_3__ reg; } ;
struct TYPE_5__ {int offset; } ;
struct TYPE_4__ {struct wined3d_string_buffer* buffer; } ;
typedef int DWORD ;


 int shader_addline (struct wined3d_string_buffer*,char*,char*,...) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int,char*) ;

__attribute__((used)) static void pshader_hw_bem(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    DWORD sampler_code = dst->reg.idx[0].offset;
    char dst_name[50];
    char src_name[2][50];

    shader_arb_get_dst_param(ins, dst, dst_name);







    shader_arb_get_src_param(ins, &ins->src[1], 1, src_name[1]);
    shader_addline(buffer, "SWZ TA, bumpenvmat%d, x, z, 0, 0;\n", sampler_code);
    shader_addline(buffer, "DP3 TC.r, TA, %s;\n", src_name[1]);
    shader_addline(buffer, "SWZ TA, bumpenvmat%d, y, w, 0, 0;\n", sampler_code);
    shader_addline(buffer, "DP3 TC.g, TA, %s;\n", src_name[1]);

    shader_arb_get_src_param(ins, &ins->src[0], 0, src_name[0]);
    shader_addline(buffer, "ADD %s, %s, TC;\n", dst_name, src_name[0]);
}
