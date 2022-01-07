
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct TYPE_3__ {int major; } ;
struct wined3d_shader_reg_maps {int fog; TYPE_1__ shader_version; } ;
struct wined3d_shader {struct wined3d_shader_reg_maps reg_maps; } ;
struct TYPE_4__ {unsigned int user_clip_distances; } ;
struct wined3d_gl_info {int * supported; TYPE_2__ limits; } ;
struct vs_compile_args {scalar_t__ fog_src; scalar_t__ next_shader_type; int per_vertex_point_size; scalar_t__ point_size; scalar_t__ clip_enabled; } ;
typedef scalar_t__ BOOL ;


 size_t ARB_CLIP_CONTROL ;
 scalar_t__ VS_FOG_Z ;
 scalar_t__ WINED3D_SHADER_TYPE_PIXEL ;
 scalar_t__ needs_legacy_glsl_syntax (struct wined3d_gl_info const*) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_glsl_fixup_position (struct wined3d_string_buffer*) ;

__attribute__((used)) static void shader_glsl_generate_vs_epilogue(const struct wined3d_gl_info *gl_info,
        struct wined3d_string_buffer *buffer, const struct wined3d_shader *shader,
        const struct vs_compile_args *args)
{
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    const BOOL legacy_syntax = needs_legacy_glsl_syntax(gl_info);
    unsigned int i;


    shader_addline(buffer, "setup_vs_output(vs_out);\n");






    if (reg_maps->shader_version.major < 3)
    {
        if (args->fog_src == VS_FOG_Z)
            shader_addline(buffer, "%s = gl_Position.z;\n",
                    legacy_syntax ? "gl_FogFragCoord" : "ffp_varying_fogcoord");
        else if (!reg_maps->fog)
            shader_addline(buffer, "%s = 0.0;\n",
                    legacy_syntax ? "gl_FogFragCoord" : "ffp_varying_fogcoord");
    }


    if (args->clip_enabled)
    {
        if (legacy_syntax)
            shader_addline(buffer, "gl_ClipVertex = gl_Position;\n");
        else
            for (i = 0; i < gl_info->limits.user_clip_distances; ++i)
                shader_addline(buffer, "gl_ClipDistance[%u] = dot(gl_Position, clip_planes[%u]);\n", i, i);
    }

    if (args->point_size && !args->per_vertex_point_size)
        shader_addline(buffer, "gl_PointSize = clamp(ffp_point.size, ffp_point.size_min, ffp_point.size_max);\n");

    if (args->next_shader_type == WINED3D_SHADER_TYPE_PIXEL && !gl_info->supported[ARB_CLIP_CONTROL])
        shader_glsl_fixup_position(buffer);
}
