
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_instruction {int dummy; } ;


 int shader_glsl_cast (struct wined3d_shader_instruction const*,char*,char*) ;

__attribute__((used)) static void shader_glsl_to_uint(const struct wined3d_shader_instruction *ins)
{
    shader_glsl_cast(ins, "uvec", "uint");
}
