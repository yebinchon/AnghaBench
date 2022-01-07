
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_resource {int access; struct wined3d_format* format; } ;
struct wined3d_format {scalar_t__ id; int* flags; int color_fixup; } ;
struct wined3d_context {TYPE_2__* d3d_info; TYPE_1__* gl_info; } ;
typedef enum wined3d_blit_op { ____Placeholder_wined3d_blit_op } wined3d_blit_op ;
typedef enum complex_fixup { ____Placeholder_complex_fixup } complex_fixup ;
struct TYPE_6__ {scalar_t__ offscreen_rendering_mode; } ;
struct TYPE_5__ {int shader_color_key; } ;
struct TYPE_4__ {int * supported; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 size_t ARB_FRAGMENT_PROGRAM ;





 int FALSE ;
 int FIXME (char*,int) ;
 scalar_t__ ORM_BACKBUFFER ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int TRUE ;
 int WARN (char*) ;
 int WINED3DFMT_FLAG_COMPRESSED ;
 int WINED3DFMT_FLAG_DEPTH ;
 int WINED3DFMT_FLAG_STENCIL ;



 int WINED3D_BLIT_OP_DEPTH_BLIT ;
 int WINED3D_BLIT_OP_RAW_BLIT ;
 size_t WINED3D_GL_RES_TYPE_TEX_2D ;
 scalar_t__ WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_RESOURCE_ACCESS_GPU ;
 int d3d ;
 int d3d_shader ;
 int dump_color_fixup_desc (int ) ;
 int get_complex_fixup (int ) ;
 int is_complex_fixup (int ) ;
 scalar_t__ is_identity_fixup (int ) ;
 TYPE_3__ wined3d_settings ;

__attribute__((used)) static BOOL arbfp_blit_supported(enum wined3d_blit_op blit_op, const struct wined3d_context *context,
        const struct wined3d_resource *src_resource, DWORD src_location,
        const struct wined3d_resource *dst_resource, DWORD dst_location)
{
    const struct wined3d_format *src_format = src_resource->format;
    const struct wined3d_format *dst_format = dst_resource->format;
    enum complex_fixup src_fixup;
    BOOL decompress;

    if (!context->gl_info->supported[ARB_FRAGMENT_PROGRAM])
        return FALSE;

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
            if (!context->d3d_info->shader_color_key)
            {

                TRACE("Color keying not supported with converted textures.\n");
                return FALSE;
            }
        case 129:
        case 130:
            break;

        default:
            TRACE("Unsupported blit_op=%d\n", blit_op);
            return FALSE;
    }

    decompress = src_format && (src_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED)
            && !(dst_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED);
    if (!decompress && !(src_resource->access & dst_resource->access & WINED3D_RESOURCE_ACCESS_GPU))
        return FALSE;

    src_fixup = get_complex_fixup(src_format->color_fixup);
    if (TRACE_ON(d3d_shader) && TRACE_ON(d3d))
    {
        TRACE("Checking support for fixup:\n");
        dump_color_fixup_desc(src_format->color_fixup);
    }

    if (!is_identity_fixup(dst_format->color_fixup)
            && (dst_format->id != src_format->id || dst_location != WINED3D_LOCATION_DRAWABLE))
    {
        TRACE("Destination fixups are not supported\n");
        return FALSE;
    }

    if (is_identity_fixup(src_format->color_fixup))
    {
        TRACE("[OK]\n");
        return TRUE;
    }


    if (!is_complex_fixup(src_format->color_fixup))
    {
        if (wined3d_settings.offscreen_rendering_mode == ORM_BACKBUFFER)
        {
            WARN("Claiming fixup support because of ORM_BACKBUFFER.\n");
            return TRUE;
        }

        TRACE("[FAILED]\n");
        return FALSE;
    }

    switch(src_fixup)
    {
        case 132:
        case 133:
        case 131:
        case 135:
        case 134:
            TRACE("[OK]\n");
            return TRUE;

        default:
            FIXME("Unsupported YUV fixup %#x\n", src_fixup);
            TRACE("[FAILED]\n");
            return FALSE;
    }
}
