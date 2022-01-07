
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_reg_maps {scalar_t__ fog; scalar_t__ usespow; scalar_t__ usesnrm; } ;
struct wined3d_gl_info {int quirks; int * supported; } ;
struct arb_vshader_private {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 size_t NV_VERTEX_PROGRAM ;
 int TRUE ;
 int WINED3D_QUIRK_ARB_VS_OFFSET_LIMIT ;
 int WINED3D_QUIRK_SET_TEXCOORD_W ;
 scalar_t__ need_rel_addr_const (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ;
 int use_nv_clip (struct wined3d_gl_info const*) ;

__attribute__((used)) static BOOL need_helper_const(const struct arb_vshader_private *shader_data,
        const struct wined3d_shader_reg_maps *reg_maps, const struct wined3d_gl_info *gl_info)
{
    if (need_rel_addr_const(shader_data, reg_maps, gl_info)) return TRUE;
    if (!gl_info->supported[NV_VERTEX_PROGRAM]) return TRUE;
    if (gl_info->quirks & WINED3D_QUIRK_ARB_VS_OFFSET_LIMIT) return TRUE;
    if (gl_info->quirks & WINED3D_QUIRK_SET_TEXCOORD_W) return TRUE;
    if (!use_nv_clip(gl_info)) return TRUE;
    if (reg_maps->usesnrm) return TRUE;
    if (reg_maps->usespow) return TRUE;
    if (reg_maps->fog) return TRUE;
    return FALSE;
}
