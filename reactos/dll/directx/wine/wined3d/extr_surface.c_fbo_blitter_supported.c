
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_resource {int access; int usage; struct wined3d_format* format; } ;
struct TYPE_3__ {int glBlitFramebuffer; } ;
struct wined3d_gl_info {TYPE_1__ fbo_ops; } ;
struct wined3d_format {int* flags; int color_fixup; int id; } ;
typedef enum wined3d_blit_op { ____Placeholder_wined3d_blit_op } wined3d_blit_op ;
struct TYPE_4__ {scalar_t__ offscreen_rendering_mode; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ ORM_FBO ;
 int TRUE ;
 int WINED3DFMT_FLAG_DEPTH ;
 int WINED3DFMT_FLAG_FBO_ATTACHABLE ;
 int WINED3DFMT_FLAG_STENCIL ;
 int WINED3DUSAGE_RENDERTARGET ;


 size_t WINED3D_GL_RES_TYPE_TEX_2D ;
 int WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_RESOURCE_ACCESS_GPU ;
 int is_complex_fixup (int ) ;
 int is_identity_fixup (int ) ;
 int is_scaling_fixup (int ) ;
 TYPE_2__ wined3d_settings ;

__attribute__((used)) static BOOL fbo_blitter_supported(enum wined3d_blit_op blit_op, const struct wined3d_gl_info *gl_info,
        const struct wined3d_resource *src_resource, DWORD src_location,
        const struct wined3d_resource *dst_resource, DWORD dst_location)
{
    const struct wined3d_format *src_format = src_resource->format;
    const struct wined3d_format *dst_format = dst_resource->format;

    if ((wined3d_settings.offscreen_rendering_mode != ORM_FBO) || !gl_info->fbo_ops.glBlitFramebuffer)
        return FALSE;


    if (!(src_resource->access & dst_resource->access & WINED3D_RESOURCE_ACCESS_GPU))
        return FALSE;

    switch (blit_op)
    {
        case 129:
            if (!((src_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_FBO_ATTACHABLE)
                    || (src_resource->usage & WINED3DUSAGE_RENDERTARGET)))
                return FALSE;
            if (!((dst_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_FBO_ATTACHABLE)
                    || (dst_resource->usage & WINED3DUSAGE_RENDERTARGET)))
                return FALSE;
            if ((src_format->id != dst_format->id || dst_location == WINED3D_LOCATION_DRAWABLE)
                    && (!is_identity_fixup(src_format->color_fixup) || !is_identity_fixup(dst_format->color_fixup)))
                return FALSE;
            break;

        case 128:
            if (!(src_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & (WINED3DFMT_FLAG_DEPTH | WINED3DFMT_FLAG_STENCIL)))
                return FALSE;
            if (!(dst_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & (WINED3DFMT_FLAG_DEPTH | WINED3DFMT_FLAG_STENCIL)))
                return FALSE;



            if (is_complex_fixup(src_format->color_fixup) || is_complex_fixup(dst_format->color_fixup)
                    || is_scaling_fixup(src_format->color_fixup) || is_scaling_fixup(dst_format->color_fixup))
                return FALSE;
            break;

        default:
            return FALSE;
    }

    return TRUE;
}
