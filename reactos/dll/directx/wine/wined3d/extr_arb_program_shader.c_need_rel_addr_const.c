
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_reg_maps {int usesmova; } ;
struct wined3d_gl_info {int * supported; } ;
struct arb_vshader_private {scalar_t__ rel_offset; } ;
typedef int BOOL ;


 int FALSE ;
 size_t NV_VERTEX_PROGRAM2_OPTION ;
 int TRUE ;

__attribute__((used)) static BOOL need_rel_addr_const(const struct arb_vshader_private *shader_data,
        const struct wined3d_shader_reg_maps *reg_maps, const struct wined3d_gl_info *gl_info)
{
    if (shader_data->rel_offset) return TRUE;
    if (!reg_maps->usesmova) return FALSE;
    return !gl_info->supported[NV_VERTEX_PROGRAM2_OPTION];
}
