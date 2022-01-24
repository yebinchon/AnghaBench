#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  struct wined3d_color_key {scalar_t__ color_space_low_value; } const wined3d_color_key ;
struct TYPE_10__ {int color_key_flags; struct wined3d_color_key const src_blt_color_key; } ;
struct wined3d_resource {TYPE_2__* format; struct wined3d_device* device; } ;
struct wined3d_texture {TYPE_4__* swapchain; TYPE_3__ async; struct wined3d_resource resource; int /*<<< orphan*/  target; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* p_glFlush ) () ;int /*<<< orphan*/  (* p_glDisable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glAlphaFunc ) (int /*<<< orphan*/ ,float) ;int /*<<< orphan*/  (* p_glEnable ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {TYPE_5__ gl; } ;
struct wined3d_gl_info {TYPE_6__ gl_ops; scalar_t__* supported; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {int /*<<< orphan*/  win_handle; struct wined3d_gl_info* gl_info; } ;
struct wined3d_blitter {TYPE_1__* ops; struct wined3d_blitter* next; } ;
typedef  enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
typedef  enum wined3d_blit_op { ____Placeholder_wined3d_blit_op } wined3d_blit_op ;
struct TYPE_14__ {scalar_t__ offscreen_rendering_mode; scalar_t__ strict_draw_ordering; } ;
struct TYPE_11__ {struct wined3d_texture* front_buffer; } ;
struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_8__ {int (* blitter_blit ) (struct wined3d_blitter*,int,struct wined3d_context*,struct wined3d_surface*,int,int /*<<< orphan*/  const*,struct wined3d_surface*,int,int /*<<< orphan*/  const*,struct wined3d_color_key const*,int) ;} ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int DWORD ;

/* Variables and functions */
 size_t ARB_TEXTURE_CUBE_MAP ; 
 size_t ARB_TEXTURE_RECTANGLE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GL_ALPHA_TEST ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_DRAW_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_NOTEQUAL ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_CUBE_MAP_ARB ; 
 int /*<<< orphan*/  GL_TEXTURE_RECTANGLE_ARB ; 
 scalar_t__ ORM_FBO ; 
 int /*<<< orphan*/  STATE_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_surface*,...) ; 
 scalar_t__ WINED3DFMT_P8_UINT ; 
 int WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST ; 
 int WINED3D_CKEY_SRC_BLT ; 
 int WINED3D_LOCATION_DRAWABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,int /*<<< orphan*/ ,struct wined3d_surface*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct wined3d_context*,struct wined3d_resource*,int,struct wined3d_resource*,int) ; 
 int FUNC9 (struct wined3d_blitter*,int,struct wined3d_context*,struct wined3d_surface*,int,int /*<<< orphan*/  const*,struct wined3d_surface*,int,int /*<<< orphan*/  const*,struct wined3d_color_key const*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC19 (struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC20 (struct wined3d_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_7__ wined3d_settings ; 
 int /*<<< orphan*/  FUNC21 (struct wined3d_texture*) ; 
 int /*<<< orphan*/  FUNC22 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct wined3d_texture*,int,struct wined3d_color_key const*) ; 

__attribute__((used)) static DWORD FUNC24(struct wined3d_blitter *blitter, enum wined3d_blit_op op,
        struct wined3d_context *context, struct wined3d_surface *src_surface, DWORD src_location,
        const RECT *src_rect, struct wined3d_surface *dst_surface, DWORD dst_location, const RECT *dst_rect,
        const struct wined3d_color_key *color_key, enum wined3d_texture_filter_type filter)
{
    unsigned int src_sub_resource_idx = FUNC19(src_surface);
    struct wined3d_texture *src_texture = src_surface->container;
    struct wined3d_texture *dst_texture = dst_surface->container;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_resource *src_resource, *dst_resource;
    struct wined3d_color_key old_blt_key;
    struct wined3d_device *device;
    struct wined3d_blitter *next;
    DWORD old_color_key_flags;
    RECT r;

    src_resource = &src_texture->resource;
    dst_resource = &dst_texture->resource;
    device = dst_resource->device;

    if (!FUNC8(op, context, src_resource, src_location, dst_resource, dst_location))
    {
        if ((next = blitter->next))
            return next->ops->blitter_blit(next, op, context, src_surface, src_location,
                    src_rect, dst_surface, dst_location, dst_rect, color_key, filter);
    }

    FUNC0("Blt from surface %p to rendertarget %p\n", src_surface, dst_surface);

    old_blt_key = src_texture->async.src_blt_color_key;
    old_color_key_flags = src_texture->async.color_key_flags;
    FUNC23(src_texture, WINED3D_CKEY_SRC_BLT, color_key);

    /* Make sure the surface is up-to-date. This should probably use
     * surface_load_location() and worry about the destination surface too,
     * unless we're overwriting it completely. */
    FUNC22(src_texture, context, FALSE);

    /* Activate the destination context, set it up for blitting. */
    FUNC2(context, device);

    if (dst_location == WINED3D_LOCATION_DRAWABLE)
    {
        r = *dst_rect;
        FUNC20(dst_surface, context->win_handle, &r);
        dst_rect = &r;
    }

    if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
    {
        GLenum buffer;

        if (dst_location == WINED3D_LOCATION_DRAWABLE)
        {
            FUNC0("Destination surface %p is onscreen.\n", dst_surface);
            buffer = FUNC21(dst_texture);
        }
        else
        {
            FUNC0("Destination surface %p is offscreen.\n", dst_surface);
            buffer = GL_COLOR_ATTACHMENT0;
        }
        FUNC3(context, GL_DRAW_FRAMEBUFFER, dst_surface, NULL, dst_location);
        FUNC6(context, buffer);
        FUNC4(context, GL_DRAW_FRAMEBUFFER);
        FUNC5(context, STATE_FRAMEBUFFER);
    }

    gl_info->gl_ops.gl.p_glEnable(src_texture->target);
    FUNC1("glEnable(target)");

    if (op == WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST || color_key)
    {
        gl_info->gl_ops.gl.p_glEnable(GL_ALPHA_TEST);
        FUNC1("glEnable(GL_ALPHA_TEST)");
    }

    if (color_key)
    {
        /* For P8 surfaces, the alpha component contains the palette index.
         * Which means that the colorkey is one of the palette entries. In
         * other cases pixels that should be masked away have alpha set to 0. */
        if (src_texture->resource.format->id == WINED3DFMT_P8_UINT)
            gl_info->gl_ops.gl.p_glAlphaFunc(GL_NOTEQUAL,
                    (float)src_texture->async.src_blt_color_key.color_space_low_value / 255.0f);
        else
            gl_info->gl_ops.gl.p_glAlphaFunc(GL_NOTEQUAL, 0.0f);
        FUNC1("glAlphaFunc");
    }

    FUNC7(src_texture, src_sub_resource_idx, context, src_rect, dst_rect, filter);

    if (op == WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST || color_key)
    {
        gl_info->gl_ops.gl.p_glDisable(GL_ALPHA_TEST);
        FUNC1("glDisable(GL_ALPHA_TEST)");
    }

    /* Leave the OpenGL state valid for blitting. */
    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
    FUNC1("glDisable(GL_TEXTURE_2D)");
    if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
        FUNC1("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
    }
    if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
        FUNC1("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
    }

    if (wined3d_settings.strict_draw_ordering
            || (dst_texture->swapchain && dst_texture->swapchain->front_buffer == dst_texture))
        gl_info->gl_ops.gl.p_glFlush(); /* Flush to ensure ordering across contexts. */

    /* Restore the color key parameters */
    FUNC23(src_texture, WINED3D_CKEY_SRC_BLT,
            (old_color_key_flags & WINED3D_CKEY_SRC_BLT) ? &old_blt_key : NULL);

    return dst_location;
}