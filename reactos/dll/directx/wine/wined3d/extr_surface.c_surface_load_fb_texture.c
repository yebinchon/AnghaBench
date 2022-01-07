
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct wined3d_device* device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_3__ resource; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct TYPE_4__ {int (* p_glCopyTexSubImage2D ) (int ,unsigned int,int ,int ,int ,int ,int ,int ) ;int (* p_glReadBuffer ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef int GLenum ;
typedef int BOOL ;


 int STATE_FRAMEBUFFER ;
 int TRACE (char*,struct wined3d_surface*) ;
 int checkGLcall (char*) ;
 struct wined3d_context* context_acquire (struct wined3d_device*,struct wined3d_texture*,unsigned int) ;
 int context_get_offscreen_gl_buffer (struct wined3d_context*) ;
 struct wined3d_surface* context_get_rt_surface (struct wined3d_context*) ;
 int context_restore (struct wined3d_context*,struct wined3d_surface*) ;
 int device_invalidate_state (struct wined3d_device*,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ,unsigned int,int ,int ,int ,int ,int ,int ) ;
 unsigned int surface_get_sub_resource_idx (struct wined3d_surface*) ;
 scalar_t__ wined3d_resource_is_offscreen (TYPE_3__*) ;
 int wined3d_texture_bind_and_dirtify (struct wined3d_texture*,struct wined3d_context*,int ) ;
 int wined3d_texture_get_gl_buffer (struct wined3d_texture*) ;
 int wined3d_texture_get_level_height (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_get_level_width (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_get_sub_resource_target (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_prepare_texture (struct wined3d_texture*,struct wined3d_context*,int ) ;

void surface_load_fb_texture(struct wined3d_surface *surface, BOOL srgb, struct wined3d_context *old_ctx)
{
    unsigned int sub_resource_idx = surface_get_sub_resource_idx(surface);
    struct wined3d_texture *texture = surface->container;
    struct wined3d_device *device = texture->resource.device;
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context = old_ctx;
    struct wined3d_surface *restore_rt = ((void*)0);
    unsigned int level;
    GLenum target;

    restore_rt = context_get_rt_surface(old_ctx);
    if (restore_rt != surface)
        context = context_acquire(device, texture, sub_resource_idx);
    else
        restore_rt = ((void*)0);

    gl_info = context->gl_info;
    device_invalidate_state(device, STATE_FRAMEBUFFER);

    wined3d_texture_prepare_texture(texture, context, srgb);
    wined3d_texture_bind_and_dirtify(texture, context, srgb);

    TRACE("Reading back offscreen render target %p.\n", surface);

    if (wined3d_resource_is_offscreen(&texture->resource))
        gl_info->gl_ops.gl.p_glReadBuffer(context_get_offscreen_gl_buffer(context));
    else
        gl_info->gl_ops.gl.p_glReadBuffer(wined3d_texture_get_gl_buffer(texture));
    checkGLcall("glReadBuffer");

    level = sub_resource_idx % texture->level_count;
    target = wined3d_texture_get_sub_resource_target(texture, sub_resource_idx);
    gl_info->gl_ops.gl.p_glCopyTexSubImage2D(target, level, 0, 0, 0, 0,
            wined3d_texture_get_level_width(texture, level),
            wined3d_texture_get_level_height(texture, level));
    checkGLcall("glCopyTexSubImage2D");

    if (restore_rt)
        context_restore(context, restore_rt);
}
