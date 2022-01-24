#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wined3d_resource {int access; struct wined3d_format* format; } ;
struct wined3d_format {scalar_t__ id; int* flags; int /*<<< orphan*/  color_fixup; } ;
struct wined3d_context {TYPE_2__* d3d_info; TYPE_1__* gl_info; } ;
typedef  enum wined3d_blit_op { ____Placeholder_wined3d_blit_op } wined3d_blit_op ;
typedef  enum complex_fixup { ____Placeholder_complex_fixup } complex_fixup ;
struct TYPE_6__ {scalar_t__ offscreen_rendering_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  shader_color_key; } ;
struct TYPE_4__ {int /*<<< orphan*/ * supported; } ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 size_t ARB_FRAGMENT_PROGRAM ; 
#define  COMPLEX_FIXUP_NV12 135 
#define  COMPLEX_FIXUP_P8 134 
#define  COMPLEX_FIXUP_UYVY 133 
#define  COMPLEX_FIXUP_YUY2 132 
#define  COMPLEX_FIXUP_YV12 131 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ ORM_BACKBUFFER ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int WINED3DFMT_FLAG_COMPRESSED ; 
 int WINED3DFMT_FLAG_DEPTH ; 
 int WINED3DFMT_FLAG_STENCIL ; 
#define  WINED3D_BLIT_OP_COLOR_BLIT 130 
#define  WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST 129 
#define  WINED3D_BLIT_OP_COLOR_BLIT_CKEY 128 
 int WINED3D_BLIT_OP_DEPTH_BLIT ; 
 int WINED3D_BLIT_OP_RAW_BLIT ; 
 size_t WINED3D_GL_RES_TYPE_TEX_2D ; 
 scalar_t__ WINED3D_LOCATION_DRAWABLE ; 
 int WINED3D_RESOURCE_ACCESS_GPU ; 
 int /*<<< orphan*/  d3d ; 
 int /*<<< orphan*/  d3d_shader ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__ wined3d_settings ; 

__attribute__((used)) static BOOL FUNC8(enum wined3d_blit_op blit_op, const struct wined3d_context *context,
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
            blit_op = WINED3D_BLIT_OP_COLOR_BLIT;
    }

    switch (blit_op)
    {
        case WINED3D_BLIT_OP_COLOR_BLIT_CKEY:
            if (!context->d3d_info->shader_color_key)
            {
                /* The conversion modifies the alpha channel so the color key might no longer match. */
                FUNC1("Color keying not supported with converted textures.\n");
                return FALSE;
            }
        case WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST:
        case WINED3D_BLIT_OP_COLOR_BLIT:
            break;

        default:
            FUNC1("Unsupported blit_op=%d\n", blit_op);
            return FALSE;
    }

    decompress = src_format && (src_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED)
            && !(dst_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED);
    if (!decompress && !(src_resource->access & dst_resource->access & WINED3D_RESOURCE_ACCESS_GPU))
        return FALSE;

    src_fixup = FUNC5(src_format->color_fixup);
    if (FUNC2(d3d_shader) && FUNC2(d3d))
    {
        FUNC1("Checking support for fixup:\n");
        FUNC4(src_format->color_fixup);
    }

    if (!FUNC7(dst_format->color_fixup)
            && (dst_format->id != src_format->id || dst_location != WINED3D_LOCATION_DRAWABLE))
    {
        FUNC1("Destination fixups are not supported\n");
        return FALSE;
    }

    if (FUNC7(src_format->color_fixup))
    {
        FUNC1("[OK]\n");
        return TRUE;
    }

     /* We only support YUV conversions. */
    if (!FUNC6(src_format->color_fixup))
    {
        if (wined3d_settings.offscreen_rendering_mode == ORM_BACKBUFFER)
        {
            FUNC3("Claiming fixup support because of ORM_BACKBUFFER.\n");
            return TRUE;
        }

        FUNC1("[FAILED]\n");
        return FALSE;
    }

    switch(src_fixup)
    {
        case COMPLEX_FIXUP_YUY2:
        case COMPLEX_FIXUP_UYVY:
        case COMPLEX_FIXUP_YV12:
        case COMPLEX_FIXUP_NV12:
        case COMPLEX_FIXUP_P8:
            FUNC1("[OK]\n");
            return TRUE;

        default:
            FUNC0("Unsupported YUV fixup %#x\n", src_fixup);
            FUNC1("[FAILED]\n");
            return FALSE;
    }
}