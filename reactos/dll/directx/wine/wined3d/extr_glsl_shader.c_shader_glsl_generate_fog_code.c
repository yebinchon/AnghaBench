
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
typedef enum wined3d_ffp_ps_fog_mode { ____Placeholder_wined3d_ffp_ps_fog_mode } wined3d_ffp_ps_fog_mode ;


 int ERR (char*,int) ;




 scalar_t__ needs_legacy_glsl_syntax (struct wined3d_gl_info const*) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_glsl_generate_fog_code(struct wined3d_string_buffer *buffer,
        const struct wined3d_gl_info *gl_info, enum wined3d_ffp_ps_fog_mode mode)
{
    const char *output = needs_legacy_glsl_syntax(gl_info) ? "gl_FragData[0]" : "ps_out0";

    switch (mode)
    {
        case 128:
            return;

        case 129:
            shader_addline(buffer, "float fog = (ffp_fog.end - ffp_varying_fogcoord) * ffp_fog.scale;\n");
            break;

        case 131:
            shader_addline(buffer, "float fog = exp(-ffp_fog.density * ffp_varying_fogcoord);\n");
            break;

        case 130:
            shader_addline(buffer, "float fog = exp(-ffp_fog.density * ffp_fog.density"
                    " * ffp_varying_fogcoord * ffp_varying_fogcoord);\n");
            break;

        default:
            ERR("Invalid fog mode %#x.\n", mode);
            return;
    }

    shader_addline(buffer, "%s.xyz = mix(ffp_fog.color.xyz, %s.xyz, clamp(fog, 0.0, 1.0));\n",
            output, output);
}
