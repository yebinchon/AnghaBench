
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;


 int shader_addline (struct wined3d_string_buffer*,char*) ;

__attribute__((used)) static void shader_glsl_fixup_position(struct wined3d_string_buffer *buffer)
{







    shader_addline(buffer, "gl_Position.y = gl_Position.y * pos_fixup.y;\n");
    shader_addline(buffer, "gl_Position.xy += pos_fixup.zw * gl_Position.ww;\n");
    shader_addline(buffer, "gl_Position.z = gl_Position.z * 2.0 - gl_Position.w;\n");
}
