
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;


 int shader_addline (struct wined3d_string_buffer*,char*,char*,char*,char*,char*) ;
 int wined3d_ftoa (float const,char*) ;

__attribute__((used)) static void shader_glsl_append_imm_vec4(struct wined3d_string_buffer *buffer, const float *values)
{
    char str[4][17];

    wined3d_ftoa(values[0], str[0]);
    wined3d_ftoa(values[1], str[1]);
    wined3d_ftoa(values[2], str[2]);
    wined3d_ftoa(values[3], str[3]);
    shader_addline(buffer, "vec4(%s, %s, %s, %s)", str[0], str[1], str[2], str[3]);
}
