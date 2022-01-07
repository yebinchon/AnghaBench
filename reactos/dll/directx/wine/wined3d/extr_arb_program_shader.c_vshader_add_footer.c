
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
struct TYPE_6__ {int type; } ;
struct wined3d_shader_reg_maps {TYPE_1__ shader_version; int fog; } ;
struct TYPE_8__ {unsigned int user_clip_distances; } ;
struct wined3d_gl_info {int * supported; TYPE_3__ limits; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; unsigned int vs_clipplanes; int footer_written; } ;
struct arb_vshader_private {int dummy; } ;
struct TYPE_9__ {unsigned int clipplane_mask; int clip_texcoord; } ;
struct TYPE_10__ {TYPE_4__ boolclip; } ;
struct TYPE_7__ {scalar_t__ fog_src; scalar_t__ clip_enabled; } ;
struct arb_vs_compile_args {TYPE_5__ clip; TYPE_2__ super; } ;


 size_t ARB_CLIP_CONTROL ;
 int ARB_ONE ;
 int ARB_TWO ;
 int ARB_ZERO ;
 scalar_t__ NV2 ;
 int TRUE ;
 scalar_t__ VS_FOG_Z ;
 int WINED3D_SHADER_TYPE_VERTEX ;
 char* arb_get_helper_value (int ,int ) ;
 scalar_t__ need_helper_const (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 scalar_t__ use_nv_clip (struct wined3d_gl_info const*) ;

__attribute__((used)) static void vshader_add_footer(struct shader_arb_ctx_priv *priv_ctx,
        const struct arb_vshader_private *shader_data, const struct arb_vs_compile_args *args,
        const struct wined3d_shader_reg_maps *reg_maps, const struct wined3d_gl_info *gl_info,
        struct wined3d_string_buffer *buffer)
{
    unsigned int i;






    if (args->super.fog_src == VS_FOG_Z)
    {
        shader_addline(buffer, "MOV result.fogcoord, TMP_OUT.z;\n");
    }
    else
    {
        if (!reg_maps->fog)
        {

            shader_addline(buffer, "ADD result.fogcoord, posFixup.x, -posFixup.x;\n");
        }
        else
        {

            const char *zero = arb_get_helper_value(reg_maps->shader_version.type, ARB_ZERO);
            const char *one = arb_get_helper_value(reg_maps->shader_version.type, ARB_ONE);

            shader_addline(buffer, "MIN TMP_FOGCOORD.x, TMP_FOGCOORD.x, %s;\n", one);
            shader_addline(buffer, "MAX result.fogcoord.x, TMP_FOGCOORD.x, %s;\n", zero);
        }
    }


    if (use_nv_clip(gl_info) && priv_ctx->target_version >= NV2)
    {
        if (args->super.clip_enabled)
        {
            for (i = 0; i < priv_ctx->vs_clipplanes; i++)
            {
                shader_addline(buffer, "DP4 result.clip[%u].x, TMP_OUT, state.clip[%u].plane;\n", i, i);
            }
        }
    }
    else if (args->clip.boolclip.clip_texcoord)
    {
        static const char component[4] = {'x', 'y', 'z', 'w'};
        unsigned int cur_clip = 0;
        const char *zero = arb_get_helper_value(WINED3D_SHADER_TYPE_VERTEX, ARB_ZERO);

        for (i = 0; i < gl_info->limits.user_clip_distances; ++i)
        {
            if (args->clip.boolclip.clipplane_mask & (1u << i))
            {
                shader_addline(buffer, "DP4 TA.%c, TMP_OUT, state.clip[%u].plane;\n",
                               component[cur_clip++], i);
            }
        }
        switch (cur_clip)
        {
            case 0:
                shader_addline(buffer, "MOV TA, %s;\n", zero);
                break;
            case 1:
                shader_addline(buffer, "MOV TA.yzw, %s;\n", zero);
                break;
            case 2:
                shader_addline(buffer, "MOV TA.zw, %s;\n", zero);
                break;
            case 3:
                shader_addline(buffer, "MOV TA.w, %s;\n", zero);
                break;
        }
        shader_addline(buffer, "MOV result.texcoord[%u], TA;\n",
                       args->clip.boolclip.clip_texcoord - 1);
    }
    if (!gl_info->supported[ARB_CLIP_CONTROL])
    {
        shader_addline(buffer, "MUL TA, posFixup, TMP_OUT.w;\n");
        shader_addline(buffer, "ADD TMP_OUT.x, TMP_OUT.x, TA.z;\n");
        shader_addline(buffer, "MAD TMP_OUT.y, TMP_OUT.y, posFixup.y, TA.w;\n");



        if (need_helper_const(shader_data, reg_maps, gl_info))
        {
            const char *two = arb_get_helper_value(WINED3D_SHADER_TYPE_VERTEX, ARB_TWO);
            shader_addline(buffer, "MAD TMP_OUT.z, TMP_OUT.z, %s, -TMP_OUT.w;\n", two);
        }
        else
        {
            shader_addline(buffer, "ADD TMP_OUT.z, TMP_OUT.z, TMP_OUT.z;\n");
            shader_addline(buffer, "ADD TMP_OUT.z, TMP_OUT.z, -TMP_OUT.w;\n");
        }
    }

    shader_addline(buffer, "MOV result.position, TMP_OUT;\n");

    priv_ctx->footer_written = TRUE;
}
