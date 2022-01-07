
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int * src; struct wined3d_shader_dst_param* dst; TYPE_3__* ctx; } ;
struct wined3d_shader_dst_param {int modifiers; int write_mask; int reg; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; } ;
struct TYPE_6__ {TYPE_2__* reg_maps; struct shader_arb_ctx_priv* backend_data; struct wined3d_string_buffer* buffer; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;
typedef int BOOL ;


 scalar_t__ NV2 ;
 int WINED3DSPDM_SATURATE ;
 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_1 ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param*,char*) ;
 char* shader_arb_get_modifier (struct wined3d_shader_instruction const*) ;
 int shader_arb_get_register_name (struct wined3d_shader_instruction const*,int *,char*,int *) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int,char*) ;
 scalar_t__ shader_is_pshader_version (int ) ;

__attribute__((used)) static void shader_hw_sincos(const struct wined3d_shader_instruction *ins)
{




    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct shader_arb_ctx_priv *priv = ins->ctx->backend_data;
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];
    char dst_name[50];
    char src_name0[50], src_name1[50], src_name2[50];
    BOOL is_color;

    shader_arb_get_src_param(ins, &ins->src[0], 0, src_name0);
    if(shader_is_pshader_version(ins->ctx->reg_maps->shader_version.type)) {
        shader_arb_get_dst_param(ins, &ins->dst[0], dst_name);

        shader_addline(buffer, "SCS %s, %s;\n", dst_name, src_name0);

        if(ins->dst[0].modifiers & WINED3DSPDM_SATURATE)
        {
            shader_arb_get_register_name(ins, &dst->reg, src_name0, &is_color);
            shader_addline(buffer, "MOV_SAT %s, %s;\n", dst_name, src_name0);
        }
    } else if(priv->target_version >= NV2) {
        shader_arb_get_register_name(ins, &dst->reg, dst_name, &is_color);


        if(dst->write_mask & WINED3DSP_WRITEMASK_0)
            shader_addline(buffer, "COS%s %s.x, %s;\n", shader_arb_get_modifier(ins), dst_name, src_name0);
        if(dst->write_mask & WINED3DSP_WRITEMASK_1)
            shader_addline(buffer, "SIN%s %s.y, %s;\n", shader_arb_get_modifier(ins), dst_name, src_name0);
    } else {
        shader_arb_get_src_param(ins, &ins->src[1], 1, src_name1);
        shader_arb_get_src_param(ins, &ins->src[2], 2, src_name2);
        shader_arb_get_register_name(ins, &dst->reg, dst_name, &is_color);

        shader_addline(buffer, "MUL %s.x, %s, %s;\n", dst_name, src_name0, src_name0);
        shader_addline(buffer, "MUL TA.y, %s.x, %s;\n", dst_name, src_name0);
        shader_addline(buffer, "MUL %s.y, TA.y, %s;\n", dst_name, src_name0);
        shader_addline(buffer, "MUL TA.z, %s.y, %s;\n", dst_name, src_name0);
        shader_addline(buffer, "MUL %s.z, TA.z, %s;\n", dst_name, src_name0);
        shader_addline(buffer, "MUL TA.w, %s.z, %s;\n", dst_name, src_name0);
        shader_addline(buffer, "MUL TA.x, %s, %s.w;\n", src_name0, src_name2);
        shader_addline(buffer, "MAD TA.x, TA.y, %s.x, TA.x;\n", src_name2);
        shader_addline(buffer, "MAD TA.x, TA.z, %s.w, TA.x;\n", src_name1);
        shader_addline(buffer, "MAD TA.x, TA.w, %s.x, TA.x;\n", src_name1);


        shader_addline(buffer, "MAD TA.y, %s.x, %s.y, %s.z;\n", dst_name, src_name2, src_name2);
        shader_addline(buffer, "MAD TA.y, %s.y, %s.z, TA.y;\n", dst_name, src_name1);
        shader_addline(buffer, "MAD TA.y, %s.z, %s.y, TA.y;\n", dst_name, src_name1);

        if(dst->write_mask & WINED3DSP_WRITEMASK_0) {

            shader_addline(buffer, "MUL TA.z, TA.y, TA.y;\n");
            shader_addline(buffer, "MAD %s.x, -TA.x, TA.x, TA.z;\n", dst_name);
        }
        if(dst->write_mask & WINED3DSP_WRITEMASK_1) {

            shader_addline(buffer, "MUL %s.y, TA.x, TA.y;\n", dst_name);
            shader_addline(buffer, "ADD %s.y, %s.y, %s.y;\n", dst_name, dst_name, dst_name);
        }
    }
}
