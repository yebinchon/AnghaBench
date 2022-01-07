
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_type; } ;
struct wined3d_shader_src_param {TYPE_1__ reg; } ;
struct wined3d_shader_instruction {int dummy; } ;
struct glsl_src_param {int dummy; } ;
typedef int DWORD ;


 int shader_glsl_add_src_param_ext (struct wined3d_shader_instruction const*,struct wined3d_shader_src_param const*,int ,struct glsl_src_param*,int ) ;

__attribute__((used)) static void shader_glsl_add_src_param(const struct wined3d_shader_instruction *ins,
        const struct wined3d_shader_src_param *wined3d_src, DWORD mask, struct glsl_src_param *glsl_src)
{
    shader_glsl_add_src_param_ext(ins, wined3d_src, mask, glsl_src, wined3d_src->reg.data_type);
}
