
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_reg_maps {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct arb_vshader_private {int dummy; } ;


 scalar_t__ need_helper_const (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ;
 scalar_t__ need_rel_addr_const (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ;

__attribute__((used)) static unsigned int reserved_vs_const(const struct arb_vshader_private *shader_data,
        const struct wined3d_shader_reg_maps *reg_maps, const struct wined3d_gl_info *gl_info)
{
    unsigned int ret = 1;


    if (need_helper_const(shader_data, reg_maps, gl_info)) ++ret;
    if (need_rel_addr_const(shader_data, reg_maps, gl_info)) ++ret;
    return ret;
}
