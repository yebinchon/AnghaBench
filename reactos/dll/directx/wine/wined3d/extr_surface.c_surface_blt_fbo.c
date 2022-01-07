
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* format; } ;
struct wined3d_texture {unsigned int level_count; TYPE_4__* swapchain; TYPE_2__ resource; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct TYPE_18__ {int (* p_glFlush ) () ;int (* p_glDisable ) (int ) ;int (* p_glColorMask ) (int ,int ,int ,int ) ;int (* p_glReadBuffer ) (int ) ;} ;
struct TYPE_19__ {TYPE_5__ gl; } ;
struct TYPE_16__ {int (* glBlitFramebuffer ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;} ;
struct wined3d_gl_info {TYPE_6__ gl_ops; TYPE_3__ fbo_ops; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {int win_handle; struct wined3d_gl_info* gl_info; int valid; } ;
typedef enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
struct TYPE_21__ {scalar_t__ strict_draw_ordering; } ;
struct TYPE_20__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_17__ {struct wined3d_texture* front_buffer; } ;
struct TYPE_14__ {scalar_t__ id; } ;
typedef TYPE_7__ RECT ;
typedef int GLenum ;
typedef int DWORD ;


 int FIXME (char*,int ,int) ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DRAW_FRAMEBUFFER ;
 int GL_LINEAR ;
 int GL_NEAREST ;
 int GL_READ_FRAMEBUFFER ;
 int GL_SCISSOR_TEST ;
 int GL_TRUE ;
 int MAX_RENDER_TARGETS ;
 int STATE_FRAMEBUFFER ;
 int STATE_RENDER (int ) ;
 int TRACE (char*,struct wined3d_surface*,...) ;
 int WARN (char*) ;
 int WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_LOCATION_RB_RESOLVED ;
 int WINED3D_RS_COLORWRITE (int) ;
 int WINED3D_RS_SCISSORTESTENABLE ;



 scalar_t__ abs (scalar_t__) ;
 int checkGLcall (char*) ;
 struct wined3d_context* context_acquire (struct wined3d_device const*,struct wined3d_texture*,unsigned int) ;
 int context_apply_fbo_state_blit (struct wined3d_context*,int ,struct wined3d_surface*,int *,int ) ;
 int context_check_fbo_status (struct wined3d_context*,int ) ;
 struct wined3d_surface* context_get_rt_surface (struct wined3d_context*) ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int context_release (struct wined3d_context*) ;
 int context_restore (struct wined3d_context*,struct wined3d_surface*) ;
 int context_set_draw_buffer (struct wined3d_context*,int ) ;
 int debug_d3dtexturefiltertype (int) ;
 scalar_t__ is_multisample_location (struct wined3d_texture*,int ) ;
 int stub1 (int ) ;
 int stub2 (int ,int ,int ,int ) ;
 int stub3 (int ) ;
 int stub4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int stub5 () ;
 unsigned int surface_get_sub_resource_idx (struct wined3d_surface*) ;
 int surface_translate_drawable_coords (struct wined3d_surface*,int ,TYPE_7__*) ;
 int texture2d_is_full_rect (struct wined3d_texture*,unsigned int,TYPE_7__*) ;
 int wine_dbgstr_rect (TYPE_7__ const*) ;
 int wined3d_debug_location (int ) ;
 TYPE_8__ wined3d_settings ;
 int wined3d_texture_get_gl_buffer (struct wined3d_texture*) ;
 int wined3d_texture_load_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int ) ;
 int wined3d_texture_prepare_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int ) ;

__attribute__((used)) static void surface_blt_fbo(const struct wined3d_device *device,
        struct wined3d_context *old_ctx, enum wined3d_texture_filter_type filter,
        struct wined3d_surface *src_surface, DWORD src_location, const RECT *src_rect_in,
        struct wined3d_surface *dst_surface, DWORD dst_location, const RECT *dst_rect_in)
{
    unsigned int dst_sub_resource_idx = surface_get_sub_resource_idx(dst_surface);
    unsigned int src_sub_resource_idx = surface_get_sub_resource_idx(src_surface);
    struct wined3d_texture *dst_texture = dst_surface->container;
    struct wined3d_texture *src_texture = src_surface->container;
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context = old_ctx;
    struct wined3d_surface *required_rt, *restore_rt = ((void*)0);
    RECT src_rect, dst_rect;
    GLenum gl_filter;
    GLenum buffer;
    int i;

    TRACE("device %p, filter %s,\n", device, debug_d3dtexturefiltertype(filter));
    TRACE("src_surface %p, src_location %s, src_rect %s,\n",
            src_surface, wined3d_debug_location(src_location), wine_dbgstr_rect(src_rect_in));
    TRACE("dst_surface %p, dst_location %s, dst_rect %s.\n",
            dst_surface, wined3d_debug_location(dst_location), wine_dbgstr_rect(dst_rect_in));

    src_rect = *src_rect_in;
    dst_rect = *dst_rect_in;

    switch (filter)
    {
        case 130:
            gl_filter = GL_LINEAR;
            break;

        default:
            FIXME("Unsupported filter mode %s (%#x).\n", debug_d3dtexturefiltertype(filter), filter);
        case 129:
        case 128:
            gl_filter = GL_NEAREST;
            break;
    }


    if (is_multisample_location(src_texture, src_location)
            && (src_texture->resource.format->id != dst_texture->resource.format->id
                || abs(src_rect.bottom - src_rect.top) != abs(dst_rect.bottom - dst_rect.top)
                || abs(src_rect.right - src_rect.left) != abs(dst_rect.right - dst_rect.left)))
        src_location = WINED3D_LOCATION_RB_RESOLVED;





    wined3d_texture_load_location(src_texture, src_sub_resource_idx, old_ctx, src_location);
    if (!texture2d_is_full_rect(dst_texture, dst_sub_resource_idx % dst_texture->level_count, &dst_rect))
        wined3d_texture_load_location(dst_texture, dst_sub_resource_idx, old_ctx, dst_location);
    else
        wined3d_texture_prepare_location(dst_texture, dst_sub_resource_idx, old_ctx, dst_location);


    if (src_location == WINED3D_LOCATION_DRAWABLE) required_rt = src_surface;
    else if (dst_location == WINED3D_LOCATION_DRAWABLE) required_rt = dst_surface;
    else required_rt = ((void*)0);

    restore_rt = context_get_rt_surface(old_ctx);
    if (restore_rt != required_rt)
        context = context_acquire(device, required_rt ? required_rt->container : ((void*)0),
                required_rt ? surface_get_sub_resource_idx(required_rt) : 0);
    else
        restore_rt = ((void*)0);

    if (!context->valid)
    {
        context_release(context);
        WARN("Invalid context, skipping blit.\n");
        return;
    }

    gl_info = context->gl_info;

    if (src_location == WINED3D_LOCATION_DRAWABLE)
    {
        TRACE("Source surface %p is onscreen.\n", src_surface);
        buffer = wined3d_texture_get_gl_buffer(src_texture);
        surface_translate_drawable_coords(src_surface, context->win_handle, &src_rect);
    }
    else
    {
        TRACE("Source surface %p is offscreen.\n", src_surface);
        buffer = GL_COLOR_ATTACHMENT0;
    }

    context_apply_fbo_state_blit(context, GL_READ_FRAMEBUFFER, src_surface, ((void*)0), src_location);
    gl_info->gl_ops.gl.p_glReadBuffer(buffer);
    checkGLcall("glReadBuffer()");
    context_check_fbo_status(context, GL_READ_FRAMEBUFFER);

    if (dst_location == WINED3D_LOCATION_DRAWABLE)
    {
        TRACE("Destination surface %p is onscreen.\n", dst_surface);
        buffer = wined3d_texture_get_gl_buffer(dst_texture);
        surface_translate_drawable_coords(dst_surface, context->win_handle, &dst_rect);
    }
    else
    {
        TRACE("Destination surface %p is offscreen.\n", dst_surface);
        buffer = GL_COLOR_ATTACHMENT0;
    }

    context_apply_fbo_state_blit(context, GL_DRAW_FRAMEBUFFER, dst_surface, ((void*)0), dst_location);
    context_set_draw_buffer(context, buffer);
    context_check_fbo_status(context, GL_DRAW_FRAMEBUFFER);
    context_invalidate_state(context, STATE_FRAMEBUFFER);

    gl_info->gl_ops.gl.p_glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    for (i = 0; i < MAX_RENDER_TARGETS; ++i)
        context_invalidate_state(context, STATE_RENDER(WINED3D_RS_COLORWRITE(i)));

    gl_info->gl_ops.gl.p_glDisable(GL_SCISSOR_TEST);
    context_invalidate_state(context, STATE_RENDER(WINED3D_RS_SCISSORTESTENABLE));

    gl_info->fbo_ops.glBlitFramebuffer(src_rect.left, src_rect.top, src_rect.right, src_rect.bottom,
            dst_rect.left, dst_rect.top, dst_rect.right, dst_rect.bottom, GL_COLOR_BUFFER_BIT, gl_filter);
    checkGLcall("glBlitFramebuffer()");

    if (wined3d_settings.strict_draw_ordering || (dst_location == WINED3D_LOCATION_DRAWABLE
            && dst_texture->swapchain->front_buffer == dst_texture))
        gl_info->gl_ops.gl.p_glFlush();

    if (restore_rt)
        context_restore(context, restore_rt);
}
