
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_resource {int access; int usage; struct wined3d_format* format; } ;
struct wined3d_format {int* flags; scalar_t__ id; int color_fixup; } ;
struct wined3d_context {TYPE_2__* gl_info; TYPE_1__* d3d_info; } ;
typedef enum wined3d_blit_op { ____Placeholder_wined3d_blit_op } wined3d_blit_op ;
struct TYPE_6__ {int offscreen_rendering_mode; } ;
struct TYPE_5__ {int * supported; } ;
struct TYPE_4__ {int shader_color_key; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int ORM_BACKBUFFER ;
 int TRACE (char*,...) ;
 int TRACE_ON (int ) ;
 int TRUE ;
 int WARN (char*) ;
 int WINED3DFMT_FLAG_COMPRESSED ;
 int WINED3DFMT_FLAG_DEPTH ;
 int WINED3DFMT_FLAG_STENCIL ;
 int WINED3DUSAGE_RENDERTARGET ;



 int WINED3D_BLIT_OP_DEPTH_BLIT ;
 int WINED3D_BLIT_OP_RAW_BLIT ;
 size_t WINED3D_GL_LEGACY_CONTEXT ;
 size_t WINED3D_GL_RES_TYPE_TEX_2D ;
 int WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_RESOURCE_ACCESS_GPU ;
 int d3d ;
 int dump_color_fixup_desc (int ) ;
 int is_identity_fixup (int ) ;
 TYPE_3__ wined3d_settings ;

__attribute__((used)) static BOOL ffp_blit_supported(enum wined3d_blit_op blit_op, const struct wined3d_context *context,
        const struct wined3d_resource *src_resource, DWORD src_location,
        const struct wined3d_resource *dst_resource, DWORD dst_location)
{
    const struct wined3d_format *src_format = src_resource->format;
    const struct wined3d_format *dst_format = dst_resource->format;
    BOOL decompress;

    decompress = src_format && (src_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED)
            && !(dst_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED);
    if (!decompress && !(src_resource->access & dst_resource->access & WINED3D_RESOURCE_ACCESS_GPU))
    {
        TRACE("Source or destination resource is not GPU accessible.\n");
        return FALSE;
    }

    if (blit_op == WINED3D_BLIT_OP_RAW_BLIT && dst_format->id == src_format->id)
    {
        if (dst_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & (WINED3DFMT_FLAG_DEPTH | WINED3DFMT_FLAG_STENCIL))
            blit_op = WINED3D_BLIT_OP_DEPTH_BLIT;
        else
            blit_op = 130;
    }

    switch (blit_op)
    {
        case 128:
            if (context->d3d_info->shader_color_key)
            {
                TRACE("Color keying requires converted textures.\n");
                return FALSE;
            }
        case 130:
        case 129:
            if (!context->gl_info->supported[WINED3D_GL_LEGACY_CONTEXT])
                return FALSE;

            if (TRACE_ON(d3d))
            {
                TRACE("Checking support for fixup:\n");
                dump_color_fixup_desc(src_format->color_fixup);
            }


            if (!is_identity_fixup(src_format->color_fixup)
                    || !is_identity_fixup(dst_format->color_fixup))
            {
                if (wined3d_settings.offscreen_rendering_mode == ORM_BACKBUFFER
                        && dst_format->id == src_format->id && dst_location == WINED3D_LOCATION_DRAWABLE)
                {
                    WARN("Claiming fixup support because of ORM_BACKBUFFER.\n");
                }
                else
                {
                    TRACE("Fixups are not supported.\n");
                    return FALSE;
                }
            }

            if (!(dst_resource->usage & WINED3DUSAGE_RENDERTARGET))
            {
                TRACE("Can only blit to render targets.\n");
                return FALSE;
            }
            return TRUE;

        default:
            TRACE("Unsupported blit operation %#x.\n", blit_op);
            return FALSE;
    }
}
