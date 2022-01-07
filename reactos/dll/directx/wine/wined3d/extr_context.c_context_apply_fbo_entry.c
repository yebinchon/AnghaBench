
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* p_glReadBuffer ) (int ) ;} ;
struct TYPE_8__ {TYPE_3__ gl; } ;
struct TYPE_5__ {int framebuffer_width; int framebuffer_height; unsigned int buffers; } ;
struct wined3d_gl_info {TYPE_4__ gl_ops; TYPE_1__ limits; scalar_t__* supported; } ;
struct wined3d_context {int fbo_draw_binding; int fbo_read_binding; struct wined3d_gl_info* gl_info; } ;
struct TYPE_6__ {int rb_namespace; int * objects; } ;
struct fbo_entry {int flags; TYPE_2__ key; int id; } ;
typedef int GLuint ;
typedef scalar_t__ GLenum ;


 size_t ARB_FRAMEBUFFER_NO_ATTACHMENTS ;
 scalar_t__ GL_DRAW_FRAMEBUFFER ;
 int GL_EXTCALL (int ) ;
 scalar_t__ GL_FRAMEBUFFER ;
 int GL_FRAMEBUFFER_DEFAULT_HEIGHT ;
 int GL_FRAMEBUFFER_DEFAULT_LAYERS ;
 int GL_FRAMEBUFFER_DEFAULT_SAMPLES ;
 int GL_FRAMEBUFFER_DEFAULT_WIDTH ;
 int GL_NONE ;
 scalar_t__ GL_READ_FRAMEBUFFER ;
 int WINED3D_FBO_ENTRY_FLAG_ATTACHED ;
 int context_attach_depth_stencil_fbo (struct wined3d_context*,scalar_t__,int *,int,int) ;
 int context_attach_surface_fbo (struct wined3d_context*,scalar_t__,unsigned int,int *,int) ;
 int context_bind_fbo (struct wined3d_context*,scalar_t__,int ) ;
 int context_set_draw_buffer (struct wined3d_context*,int ) ;
 int glFramebufferParameteri (scalar_t__,int ,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void context_apply_fbo_entry(struct wined3d_context *context, GLenum target, struct fbo_entry *entry)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    GLuint read_binding, draw_binding;
    unsigned int i;

    if (entry->flags & WINED3D_FBO_ENTRY_FLAG_ATTACHED)
    {
        context_bind_fbo(context, target, entry->id);
        return;
    }

    read_binding = context->fbo_read_binding;
    draw_binding = context->fbo_draw_binding;
    context_bind_fbo(context, GL_FRAMEBUFFER, entry->id);

    if (gl_info->supported[ARB_FRAMEBUFFER_NO_ATTACHMENTS])
    {
        GL_EXTCALL(glFramebufferParameteri(GL_FRAMEBUFFER,
                GL_FRAMEBUFFER_DEFAULT_WIDTH, gl_info->limits.framebuffer_width));
        GL_EXTCALL(glFramebufferParameteri(GL_FRAMEBUFFER,
                GL_FRAMEBUFFER_DEFAULT_HEIGHT, gl_info->limits.framebuffer_height));
        GL_EXTCALL(glFramebufferParameteri(GL_FRAMEBUFFER, GL_FRAMEBUFFER_DEFAULT_LAYERS, 1));
        GL_EXTCALL(glFramebufferParameteri(GL_FRAMEBUFFER, GL_FRAMEBUFFER_DEFAULT_SAMPLES, 1));
    }


    for (i = 0; i < gl_info->limits.buffers; ++i)
    {
        context_attach_surface_fbo(context, target, i, &entry->key.objects[i + 1],
                entry->key.rb_namespace & (1 << (i + 1)));
    }

    context_attach_depth_stencil_fbo(context, target, &entry->key.objects[0],
            entry->key.rb_namespace & 0x1, entry->flags);



    gl_info->gl_ops.gl.p_glReadBuffer(GL_NONE);
    context_set_draw_buffer(context, GL_NONE);
    if (target != GL_FRAMEBUFFER)
    {
        if (target == GL_READ_FRAMEBUFFER)
            context_bind_fbo(context, GL_DRAW_FRAMEBUFFER, draw_binding);
        else
            context_bind_fbo(context, GL_READ_FRAMEBUFFER, read_binding);
    }

    entry->flags |= WINED3D_FBO_ENTRY_FLAG_ATTACHED;
}
