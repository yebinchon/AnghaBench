#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* format; } ;
struct wined3d_texture {unsigned int level_count; TYPE_4__* swapchain; TYPE_2__ resource; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* p_glFlush ) () ;int /*<<< orphan*/  (* p_glDisable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glColorMask ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glReadBuffer ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {TYPE_5__ gl; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* glBlitFramebuffer ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct wined3d_gl_info {TYPE_6__ gl_ops; TYPE_3__ fbo_ops; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {int /*<<< orphan*/  win_handle; struct wined3d_gl_info* gl_info; int /*<<< orphan*/  valid; } ;
typedef  enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
struct TYPE_21__ {scalar_t__ strict_draw_ordering; } ;
struct TYPE_20__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_17__ {struct wined3d_texture* front_buffer; } ;
struct TYPE_14__ {scalar_t__ id; } ;
typedef  TYPE_7__ RECT ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_DRAW_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_READ_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int MAX_RENDER_TARGETS ; 
 int /*<<< orphan*/  STATE_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct wined3d_surface*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  WINED3D_LOCATION_DRAWABLE ; 
 int /*<<< orphan*/  WINED3D_LOCATION_RB_RESOLVED ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  WINED3D_RS_SCISSORTESTENABLE ; 
#define  WINED3D_TEXF_LINEAR 130 
#define  WINED3D_TEXF_NONE 129 
#define  WINED3D_TEXF_POINT 128 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct wined3d_context* FUNC7 (struct wined3d_device const*,struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_context*,int /*<<< orphan*/ ,struct wined3d_surface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 struct wined3d_surface* FUNC10 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_context*,struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (struct wined3d_texture*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 unsigned int FUNC22 (struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC23 (struct wined3d_surface*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC24 (struct wined3d_texture*,unsigned int,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_7__ const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 TYPE_8__ wined3d_settings ; 
 int /*<<< orphan*/  FUNC27 (struct wined3d_texture*) ; 
 int /*<<< orphan*/  FUNC28 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC30(const struct wined3d_device *device,
        struct wined3d_context *old_ctx, enum wined3d_texture_filter_type filter,
        struct wined3d_surface *src_surface, DWORD src_location, const RECT *src_rect_in,
        struct wined3d_surface *dst_surface, DWORD dst_location, const RECT *dst_rect_in)
{
    unsigned int dst_sub_resource_idx = FUNC22(dst_surface);
    unsigned int src_sub_resource_idx = FUNC22(src_surface);
    struct wined3d_texture *dst_texture = dst_surface->container;
    struct wined3d_texture *src_texture = src_surface->container;
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context = old_ctx;
    struct wined3d_surface *required_rt, *restore_rt = NULL;
    RECT src_rect, dst_rect;
    GLenum gl_filter;
    GLenum buffer;
    int i;

    FUNC2("device %p, filter %s,\n", device, FUNC15(filter));
    FUNC2("src_surface %p, src_location %s, src_rect %s,\n",
            src_surface, FUNC26(src_location), FUNC25(src_rect_in));
    FUNC2("dst_surface %p, dst_location %s, dst_rect %s.\n",
            dst_surface, FUNC26(dst_location), FUNC25(dst_rect_in));

    src_rect = *src_rect_in;
    dst_rect = *dst_rect_in;

    switch (filter)
    {
        case WINED3D_TEXF_LINEAR:
            gl_filter = GL_LINEAR;
            break;

        default:
            FUNC0("Unsupported filter mode %s (%#x).\n", FUNC15(filter), filter);
        case WINED3D_TEXF_NONE:
        case WINED3D_TEXF_POINT:
            gl_filter = GL_NEAREST;
            break;
    }

    /* Resolve the source surface first if needed. */
    if (FUNC16(src_texture, src_location)
            && (src_texture->resource.format->id != dst_texture->resource.format->id
                || FUNC5(src_rect.bottom - src_rect.top) != FUNC5(dst_rect.bottom - dst_rect.top)
                || FUNC5(src_rect.right - src_rect.left) != FUNC5(dst_rect.right - dst_rect.left)))
        src_location = WINED3D_LOCATION_RB_RESOLVED;

    /* Make sure the locations are up-to-date. Loading the destination
     * surface isn't required if the entire surface is overwritten. (And is
     * in fact harmful if we're being called by surface_load_location() with
     * the purpose of loading the destination surface.) */
    FUNC28(src_texture, src_sub_resource_idx, old_ctx, src_location);
    if (!FUNC24(dst_texture, dst_sub_resource_idx % dst_texture->level_count, &dst_rect))
        FUNC28(dst_texture, dst_sub_resource_idx, old_ctx, dst_location);
    else
        FUNC29(dst_texture, dst_sub_resource_idx, old_ctx, dst_location);


    if (src_location == WINED3D_LOCATION_DRAWABLE) required_rt = src_surface;
    else if (dst_location == WINED3D_LOCATION_DRAWABLE) required_rt = dst_surface;
    else required_rt = NULL;

    restore_rt = FUNC10(old_ctx);
    if (restore_rt != required_rt)
        context = FUNC7(device, required_rt ? required_rt->container : NULL,
                required_rt ? FUNC22(required_rt) : 0);
    else
        restore_rt = NULL;

    if (!context->valid)
    {
        FUNC12(context);
        FUNC3("Invalid context, skipping blit.\n");
        return;
    }

    gl_info = context->gl_info;

    if (src_location == WINED3D_LOCATION_DRAWABLE)
    {
        FUNC2("Source surface %p is onscreen.\n", src_surface);
        buffer = FUNC27(src_texture);
        FUNC23(src_surface, context->win_handle, &src_rect);
    }
    else
    {
        FUNC2("Source surface %p is offscreen.\n", src_surface);
        buffer = GL_COLOR_ATTACHMENT0;
    }

    FUNC8(context, GL_READ_FRAMEBUFFER, src_surface, NULL, src_location);
    gl_info->gl_ops.gl.p_glReadBuffer(buffer);
    FUNC6("glReadBuffer()");
    FUNC9(context, GL_READ_FRAMEBUFFER);

    if (dst_location == WINED3D_LOCATION_DRAWABLE)
    {
        FUNC2("Destination surface %p is onscreen.\n", dst_surface);
        buffer = FUNC27(dst_texture);
        FUNC23(dst_surface, context->win_handle, &dst_rect);
    }
    else
    {
        FUNC2("Destination surface %p is offscreen.\n", dst_surface);
        buffer = GL_COLOR_ATTACHMENT0;
    }

    FUNC8(context, GL_DRAW_FRAMEBUFFER, dst_surface, NULL, dst_location);
    FUNC14(context, buffer);
    FUNC9(context, GL_DRAW_FRAMEBUFFER);
    FUNC11(context, STATE_FRAMEBUFFER);

    gl_info->gl_ops.gl.p_glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    for (i = 0; i < MAX_RENDER_TARGETS; ++i)
        FUNC11(context, FUNC1(FUNC4(i)));

    gl_info->gl_ops.gl.p_glDisable(GL_SCISSOR_TEST);
    FUNC11(context, FUNC1(WINED3D_RS_SCISSORTESTENABLE));

    gl_info->fbo_ops.glBlitFramebuffer(src_rect.left, src_rect.top, src_rect.right, src_rect.bottom,
            dst_rect.left, dst_rect.top, dst_rect.right, dst_rect.bottom, GL_COLOR_BUFFER_BIT, gl_filter);
    FUNC6("glBlitFramebuffer()");

    if (wined3d_settings.strict_draw_ordering || (dst_location == WINED3D_LOCATION_DRAWABLE
            && dst_texture->swapchain->front_buffer == dst_texture))
        gl_info->gl_ops.gl.p_glFlush();

    if (restore_rt)
        FUNC13(context, restore_rt);
}