
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef struct wined3d_color_key {scalar_t__ color_space_low_value; } const wined3d_color_key ;
struct TYPE_10__ {int color_key_flags; struct wined3d_color_key const src_blt_color_key; } ;
struct wined3d_resource {TYPE_2__* format; struct wined3d_device* device; } ;
struct wined3d_texture {TYPE_4__* swapchain; TYPE_3__ async; struct wined3d_resource resource; int target; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct TYPE_12__ {int (* p_glFlush ) () ;int (* p_glDisable ) (int ) ;int (* p_glAlphaFunc ) (int ,float) ;int (* p_glEnable ) (int ) ;} ;
struct TYPE_13__ {TYPE_5__ gl; } ;
struct wined3d_gl_info {TYPE_6__ gl_ops; scalar_t__* supported; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {int win_handle; struct wined3d_gl_info* gl_info; } ;
struct wined3d_blitter {TYPE_1__* ops; struct wined3d_blitter* next; } ;
typedef enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
typedef enum wined3d_blit_op { ____Placeholder_wined3d_blit_op } wined3d_blit_op ;
struct TYPE_14__ {scalar_t__ offscreen_rendering_mode; scalar_t__ strict_draw_ordering; } ;
struct TYPE_11__ {struct wined3d_texture* front_buffer; } ;
struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_8__ {int (* blitter_blit ) (struct wined3d_blitter*,int,struct wined3d_context*,struct wined3d_surface*,int,int const*,struct wined3d_surface*,int,int const*,struct wined3d_color_key const*,int) ;} ;
typedef int RECT ;
typedef int GLenum ;
typedef int DWORD ;


 size_t ARB_TEXTURE_CUBE_MAP ;
 size_t ARB_TEXTURE_RECTANGLE ;
 int FALSE ;
 int GL_ALPHA_TEST ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_DRAW_FRAMEBUFFER ;
 int GL_NOTEQUAL ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_CUBE_MAP_ARB ;
 int GL_TEXTURE_RECTANGLE_ARB ;
 scalar_t__ ORM_FBO ;
 int STATE_FRAMEBUFFER ;
 int TRACE (char*,struct wined3d_surface*,...) ;
 scalar_t__ WINED3DFMT_P8_UINT ;
 int WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST ;
 int WINED3D_CKEY_SRC_BLT ;
 int WINED3D_LOCATION_DRAWABLE ;
 int checkGLcall (char*) ;
 int context_apply_blit_state (struct wined3d_context*,struct wined3d_device*) ;
 int context_apply_fbo_state_blit (struct wined3d_context*,int ,struct wined3d_surface*,int *,int) ;
 int context_check_fbo_status (struct wined3d_context*,int ) ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int context_set_draw_buffer (struct wined3d_context*,int ) ;
 int draw_textured_quad (struct wined3d_texture*,unsigned int,struct wined3d_context*,int const*,int const*,int) ;
 int ffp_blit_supported (int,struct wined3d_context*,struct wined3d_resource*,int,struct wined3d_resource*,int) ;
 int stub1 (struct wined3d_blitter*,int,struct wined3d_context*,struct wined3d_surface*,int,int const*,struct wined3d_surface*,int,int const*,struct wined3d_color_key const*,int) ;
 int stub10 () ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ,float) ;
 int stub5 (int ,float) ;
 int stub6 (int ) ;
 int stub7 (int ) ;
 int stub8 (int ) ;
 int stub9 (int ) ;
 unsigned int surface_get_sub_resource_idx (struct wined3d_surface*) ;
 int surface_translate_drawable_coords (struct wined3d_surface*,int ,int *) ;
 TYPE_7__ wined3d_settings ;
 int wined3d_texture_get_gl_buffer (struct wined3d_texture*) ;
 int wined3d_texture_load (struct wined3d_texture*,struct wined3d_context*,int ) ;
 int wined3d_texture_set_color_key (struct wined3d_texture*,int,struct wined3d_color_key const*) ;

__attribute__((used)) static DWORD ffp_blitter_blit(struct wined3d_blitter *blitter, enum wined3d_blit_op op,
        struct wined3d_context *context, struct wined3d_surface *src_surface, DWORD src_location,
        const RECT *src_rect, struct wined3d_surface *dst_surface, DWORD dst_location, const RECT *dst_rect,
        const struct wined3d_color_key *color_key, enum wined3d_texture_filter_type filter)
{
    unsigned int src_sub_resource_idx = surface_get_sub_resource_idx(src_surface);
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

    if (!ffp_blit_supported(op, context, src_resource, src_location, dst_resource, dst_location))
    {
        if ((next = blitter->next))
            return next->ops->blitter_blit(next, op, context, src_surface, src_location,
                    src_rect, dst_surface, dst_location, dst_rect, color_key, filter);
    }

    TRACE("Blt from surface %p to rendertarget %p\n", src_surface, dst_surface);

    old_blt_key = src_texture->async.src_blt_color_key;
    old_color_key_flags = src_texture->async.color_key_flags;
    wined3d_texture_set_color_key(src_texture, WINED3D_CKEY_SRC_BLT, color_key);




    wined3d_texture_load(src_texture, context, FALSE);


    context_apply_blit_state(context, device);

    if (dst_location == WINED3D_LOCATION_DRAWABLE)
    {
        r = *dst_rect;
        surface_translate_drawable_coords(dst_surface, context->win_handle, &r);
        dst_rect = &r;
    }

    if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
    {
        GLenum buffer;

        if (dst_location == WINED3D_LOCATION_DRAWABLE)
        {
            TRACE("Destination surface %p is onscreen.\n", dst_surface);
            buffer = wined3d_texture_get_gl_buffer(dst_texture);
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
    }

    gl_info->gl_ops.gl.p_glEnable(src_texture->target);
    checkGLcall("glEnable(target)");

    if (op == WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST || color_key)
    {
        gl_info->gl_ops.gl.p_glEnable(GL_ALPHA_TEST);
        checkGLcall("glEnable(GL_ALPHA_TEST)");
    }

    if (color_key)
    {



        if (src_texture->resource.format->id == WINED3DFMT_P8_UINT)
            gl_info->gl_ops.gl.p_glAlphaFunc(GL_NOTEQUAL,
                    (float)src_texture->async.src_blt_color_key.color_space_low_value / 255.0f);
        else
            gl_info->gl_ops.gl.p_glAlphaFunc(GL_NOTEQUAL, 0.0f);
        checkGLcall("glAlphaFunc");
    }

    draw_textured_quad(src_texture, src_sub_resource_idx, context, src_rect, dst_rect, filter);

    if (op == WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST || color_key)
    {
        gl_info->gl_ops.gl.p_glDisable(GL_ALPHA_TEST);
        checkGLcall("glDisable(GL_ALPHA_TEST)");
    }


    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
    checkGLcall("glDisable(GL_TEXTURE_2D)");
    if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
        checkGLcall("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
    }
    if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
        checkGLcall("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
    }

    if (wined3d_settings.strict_draw_ordering
            || (dst_texture->swapchain && dst_texture->swapchain->front_buffer == dst_texture))
        gl_info->gl_ops.gl.p_glFlush();


    wined3d_texture_set_color_key(src_texture, WINED3D_CKEY_SRC_BLT,
            (old_color_key_flags & WINED3D_CKEY_SRC_BLT) ? &old_blt_key : ((void*)0));

    return dst_location;
}
