
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_src_param {int modifiers; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; struct wined3d_shader_src_param* src; int * dst; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; } ;
struct TYPE_6__ {TYPE_2__* reg_maps; struct shader_arb_ctx_priv* backend_data; struct wined3d_string_buffer* buffer; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;
typedef scalar_t__ BOOL ;


 int ARB_EPS ;
 int ARB_ONE ;
 int ARB_ZERO ;
 scalar_t__ FALSE ;
 scalar_t__ NV2 ;
 int abs_modifier (int ,scalar_t__*) ;
 char* arb_get_helper_value (int ,int ) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,int *,char*) ;
 char* shader_arb_get_modifier (struct wined3d_shader_instruction const*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,struct wined3d_shader_src_param*,int,char*) ;

__attribute__((used)) static void shader_hw_pow(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char src0[50], src1[50], dst[50];
    struct wined3d_shader_src_param src0_copy = ins->src[0];
    BOOL need_abs = FALSE;
    struct shader_arb_ctx_priv *priv = ins->ctx->backend_data;
    const char *one = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_ONE);


    src0_copy.modifiers = abs_modifier(src0_copy.modifiers, &need_abs);

    shader_arb_get_dst_param(ins, &ins->dst[0], dst);
    shader_arb_get_src_param(ins, &src0_copy, 0, src0);
    shader_arb_get_src_param(ins, &ins->src[1], 1, src1);

    if (need_abs)
        shader_addline(buffer, "ABS TA.x, %s;\n", src0);
    else
        shader_addline(buffer, "MOV TA.x, %s;\n", src0);

    if (priv->target_version >= NV2)
    {
        shader_addline(buffer, "MOVC TA.y, %s;\n", src1);
        shader_addline(buffer, "POW%s %s, TA.x, TA.y;\n", shader_arb_get_modifier(ins), dst);
        shader_addline(buffer, "MOV %s (EQ.y), %s;\n", dst, one);
    }
    else
    {
        const char *zero = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_ZERO);
        const char *flt_eps = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_EPS);

        shader_addline(buffer, "ABS TA.y, %s;\n", src1);
        shader_addline(buffer, "SGE TA.y, -TA.y, %s;\n", zero);

        shader_addline(buffer, "MAD TA.z, TA.y, %s, %s;\n", flt_eps, src1);
        shader_addline(buffer, "POW%s TA.x, TA.x, TA.z;\n", shader_arb_get_modifier(ins));
        shader_addline(buffer, "MAD TA.x, -TA.x, TA.y, TA.x;\n");
        shader_addline(buffer, "MAD %s, TA.y, %s, TA.x;\n", dst, one);
    }
}
