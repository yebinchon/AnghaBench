
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef int GLuint ;
typedef scalar_t__ GLenum ;


 scalar_t__ GL_ELEMENT_ARRAY_BUFFER ;
 int GL_EXTCALL (int ) ;
 int STATE_INDEXBUFFER ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int glBindBuffer (scalar_t__,int ) ;

void context_bind_bo(struct wined3d_context *context, GLenum binding, GLuint name)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (binding == GL_ELEMENT_ARRAY_BUFFER)
        context_invalidate_state(context, STATE_INDEXBUFFER);

    GL_EXTCALL(glBindBuffer(binding, name));
}
