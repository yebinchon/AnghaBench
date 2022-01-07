
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
struct wined3d_shader_instruction {scalar_t__ handler_idx; int * src; struct wined3d_shader_dst_param* dst; TYPE_1__* ctx; } ;
struct TYPE_8__ {TYPE_2__* idx; } ;
struct wined3d_shader_dst_param {TYPE_3__ reg; } ;
struct shader_arb_ctx_priv {TYPE_5__* cur_ps_args; } ;
struct TYPE_9__ {int tex_transform; } ;
struct TYPE_10__ {TYPE_4__ super; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_6__ {struct wined3d_string_buffer* buffer; struct shader_arb_ctx_priv* backend_data; } ;
typedef int DWORD ;


 scalar_t__ WINED3DSIH_TEXBEML ;
 int WINED3D_PSARGS_PROJECTED ;
 int WINED3D_PSARGS_TEXTRANSFORM_SHIFT ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param*,char*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;
 int shader_hw_sample (struct wined3d_shader_instruction const*,int,char*,char*,int ,int *,int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void pshader_hw_texbem(const struct wined3d_shader_instruction *ins)
{
    struct shader_arb_ctx_priv *priv = ins->ctx->backend_data;
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char reg_coord[40], dst_reg[50], src_reg[50];
    DWORD reg_dest_code;




    reg_dest_code = dst->reg.idx[0].offset;
    shader_arb_get_dst_param(ins, &ins->dst[0], dst_reg);
    shader_arb_get_src_param(ins, &ins->src[0], 0, src_reg);
    sprintf(reg_coord, "fragment.texcoord[%u]", reg_dest_code);
    shader_addline(buffer, "SWZ TB, bumpenvmat%d, x, z, 0, 0;\n", reg_dest_code);
    shader_addline(buffer, "DP3 TA.x, TB, %s;\n", src_reg);
    shader_addline(buffer, "SWZ TB, bumpenvmat%d, y, w, 0, 0;\n", reg_dest_code);
    shader_addline(buffer, "DP3 TA.y, TB, %s;\n", src_reg);




    if ((priv->cur_ps_args->super.tex_transform >> reg_dest_code * WINED3D_PSARGS_TEXTRANSFORM_SHIFT)
            & WINED3D_PSARGS_PROJECTED)
    {
        shader_addline(buffer, "RCP TB.w, %s.w;\n", reg_coord);
        shader_addline(buffer, "MUL TB.xy, %s, TB.w;\n", reg_coord);
        shader_addline(buffer, "ADD TA.xy, TA, TB;\n");
    } else {
        shader_addline(buffer, "ADD TA.xy, TA, %s;\n", reg_coord);
    }

    shader_hw_sample(ins, reg_dest_code, dst_reg, "TA", 0, ((void*)0), ((void*)0));

    if (ins->handler_idx == WINED3DSIH_TEXBEML)
    {

        shader_addline(buffer, "MAD TA, %s.z, luminance%d.x, luminance%d.y;\n",
                       src_reg, reg_dest_code, reg_dest_code);
        shader_addline(buffer, "MUL %s, %s, TA;\n", dst_reg, dst_reg);
    }
}
