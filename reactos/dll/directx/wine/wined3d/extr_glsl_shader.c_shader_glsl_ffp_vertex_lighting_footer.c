
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_ffp_vs_settings {scalar_t__ localviewer; } ;


 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_glsl_ffp_vertex_lighting_footer(struct wined3d_string_buffer *buffer,
        const struct wined3d_ffp_vs_settings *settings, unsigned int idx)
{
    shader_addline(buffer, "diffuse += clamp(dot(dir, normal), 0.0, 1.0)"
            " * ffp_light[%u].diffuse.xyz * att;\n", idx);
    if (settings->localviewer)
        shader_addline(buffer, "t = dot(normal, normalize(dir - normalize(ec_pos.xyz)));\n");
    else
        shader_addline(buffer, "t = dot(normal, normalize(dir + vec3(0.0, 0.0, -1.0)));\n");
    shader_addline(buffer, "if (dot(dir, normal) > 0.0 && t > 0.0) specular +="
            " pow(t, ffp_material.shininess) * ffp_light[%u].specular * att;\n", idx);
}
