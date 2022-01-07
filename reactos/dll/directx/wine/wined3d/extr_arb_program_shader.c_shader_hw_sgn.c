
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_2__* dst; int * src; TYPE_1__* ctx; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; } ;
struct TYPE_4__ {int modifiers; } ;
struct TYPE_3__ {struct shader_arb_ctx_priv* backend_data; struct wined3d_string_buffer* buffer; } ;


 scalar_t__ NV2 ;
 int WINED3DSPDM_SATURATE ;
 int shader_addline (struct wined3d_string_buffer*,char*,char*,char*,...) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,TYPE_2__*,char*) ;
 int shader_arb_get_modifier (struct wined3d_shader_instruction const*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static void shader_hw_sgn(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char dst_name[50];
    char src_name[50];
    struct shader_arb_ctx_priv *ctx = ins->ctx->backend_data;

    shader_arb_get_dst_param(ins, &ins->dst[0], dst_name);
    shader_arb_get_src_param(ins, &ins->src[0], 0, src_name);


    if(ctx->target_version >= NV2) {
        shader_addline(buffer, "SSG%s %s, %s;\n", shader_arb_get_modifier(ins), dst_name, src_name);
        return;
    }




    if(ins->dst[0].modifiers & WINED3DSPDM_SATURATE) {
        shader_addline(buffer, "SLT %s, -%s, %s;\n", dst_name, src_name, src_name);
    } else {






        if(strstr(src_name, "TA"))
        {
            shader_addline(buffer, "SLT %s,  %s, -%s;\n", dst_name, src_name, src_name);
            shader_addline(buffer, "SLT TA, -%s, %s;\n", src_name, src_name);
            shader_addline(buffer, "ADD %s, %s, -TA;\n", dst_name, dst_name);
        }
        else
        {
            shader_addline(buffer, "SLT TA, -%s, %s;\n", src_name, src_name);
            shader_addline(buffer, "SLT %s,  %s, -%s;\n", dst_name, src_name, src_name);
            shader_addline(buffer, "ADD %s, TA, -%s;\n", dst_name, dst_name);
        }
    }
}
