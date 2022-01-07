
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;


 int shader_addline (struct wined3d_string_buffer*,char*,char const*,...) ;

__attribute__((used)) static void arbfp_add_linear_fog(struct wined3d_string_buffer *buffer,
        const char *fragcolor, const char *tmp)
{
    shader_addline(buffer, "SUB %s.x, state.fog.params.z, fragment.fogcoord.x;\n", tmp);
    shader_addline(buffer, "MUL_SAT %s.x, %s.x, state.fog.params.w;\n", tmp, tmp);
    shader_addline(buffer, "LRP %s.rgb, %s.x, %s, state.fog.color;\n", fragcolor, tmp, fragcolor);
}
