
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {void* addr; int buffer_object; } ;
typedef int INT_PTR ;
typedef int GLenum ;
typedef int GLbitfield ;
typedef int DWORD ;
typedef void BYTE ;


 size_t ARB_MAP_BUFFER_RANGE ;
 void* GL_EXTCALL (int ) ;
 int GL_MAP_FLUSH_EXPLICIT_BIT ;
 int checkGLcall (char*) ;
 int context_bind_bo (struct wined3d_context*,int ,int ) ;
 int glMapBuffer (int ,int ) ;
 int glMapBufferRange (int ,int ,size_t,int) ;
 int wined3d_resource_gl_legacy_map_flags (int ) ;
 int wined3d_resource_gl_map_flags (int ) ;

void *context_map_bo_address(struct wined3d_context *context,
        const struct wined3d_bo_address *data, size_t size, GLenum binding, DWORD flags)
{
    const struct wined3d_gl_info *gl_info;
    BYTE *memory;

    if (!data->buffer_object)
        return data->addr;

    gl_info = context->gl_info;
    context_bind_bo(context, binding, data->buffer_object);

    if (gl_info->supported[ARB_MAP_BUFFER_RANGE])
    {
        GLbitfield map_flags = wined3d_resource_gl_map_flags(flags) & ~GL_MAP_FLUSH_EXPLICIT_BIT;
        memory = GL_EXTCALL(glMapBufferRange(binding, (INT_PTR)data->addr, size, map_flags));
    }
    else
    {
        memory = GL_EXTCALL(glMapBuffer(binding, wined3d_resource_gl_legacy_map_flags(flags)));
        memory += (INT_PTR)data->addr;
    }

    context_bind_bo(context, binding, 0);
    checkGLcall("Map buffer object");

    return memory;
}
