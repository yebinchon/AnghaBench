
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int buffer_object; } ;
typedef int GLenum ;


 int GL_EXTCALL (int ) ;
 int checkGLcall (char*) ;
 int context_bind_bo (struct wined3d_context*,int ,int ) ;
 int glUnmapBuffer (int ) ;

void context_unmap_bo_address(struct wined3d_context *context,
        const struct wined3d_bo_address *data, GLenum binding)
{
    const struct wined3d_gl_info *gl_info;

    if (!data->buffer_object)
        return;

    gl_info = context->gl_info;
    context_bind_bo(context, binding, data->buffer_object);
    GL_EXTCALL(glUnmapBuffer(binding));
    context_bind_bo(context, binding, 0);
    checkGLcall("Unmap buffer object");
}
