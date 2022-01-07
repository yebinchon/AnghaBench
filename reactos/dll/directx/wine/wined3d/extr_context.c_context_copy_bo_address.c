
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int * addr; scalar_t__ buffer_object; } ;
typedef int GLintptr ;
typedef int GLenum ;
typedef int BYTE ;


 size_t ARB_COPY_BUFFER ;
 int GL_COPY_READ_BUFFER ;
 int GL_COPY_WRITE_BUFFER ;
 int GL_EXTCALL (int ) ;
 int WINED3D_MAP_READ ;
 int WINED3D_MAP_WRITE ;
 int checkGLcall (char*) ;
 int context_bind_bo (struct wined3d_context*,int ,scalar_t__) ;
 int * context_map_bo_address (struct wined3d_context*,struct wined3d_bo_address const*,size_t,int ,int ) ;
 int context_unmap_bo_address (struct wined3d_context*,struct wined3d_bo_address const*,int ) ;
 int glBindBuffer (int ,scalar_t__) ;
 int glBufferSubData (int ,int ,size_t,int *) ;
 int glCopyBufferSubData (int ,int ,int ,int ,size_t) ;
 int glGetBufferSubData (int ,int ,size_t,int *) ;
 int memcpy (int *,int *,size_t) ;

void context_copy_bo_address(struct wined3d_context *context,
        const struct wined3d_bo_address *dst, GLenum dst_binding,
        const struct wined3d_bo_address *src, GLenum src_binding, size_t size)
{
    const struct wined3d_gl_info *gl_info;
    BYTE *dst_ptr, *src_ptr;

    gl_info = context->gl_info;

    if (dst->buffer_object && src->buffer_object)
    {
        if (gl_info->supported[ARB_COPY_BUFFER])
        {
            GL_EXTCALL(glBindBuffer(GL_COPY_READ_BUFFER, src->buffer_object));
            GL_EXTCALL(glBindBuffer(GL_COPY_WRITE_BUFFER, dst->buffer_object));
            GL_EXTCALL(glCopyBufferSubData(GL_COPY_READ_BUFFER, GL_COPY_WRITE_BUFFER,
                    (GLintptr)src->addr, (GLintptr)dst->addr, size));
            checkGLcall("direct buffer copy");
        }
        else
        {
            src_ptr = context_map_bo_address(context, src, size, src_binding, WINED3D_MAP_READ);
            dst_ptr = context_map_bo_address(context, dst, size, dst_binding, WINED3D_MAP_WRITE);

            memcpy(dst_ptr, src_ptr, size);

            context_unmap_bo_address(context, dst, dst_binding);
            context_unmap_bo_address(context, src, src_binding);
        }
    }
    else if (!dst->buffer_object && src->buffer_object)
    {
        context_bind_bo(context, src_binding, src->buffer_object);
        GL_EXTCALL(glGetBufferSubData(src_binding, (GLintptr)src->addr, size, dst->addr));
        checkGLcall("buffer download");
    }
    else if (dst->buffer_object && !src->buffer_object)
    {
        context_bind_bo(context, dst_binding, dst->buffer_object);
        GL_EXTCALL(glBufferSubData(dst_binding, (GLintptr)dst->addr, size, src->addr));
        checkGLcall("buffer upload");
    }
    else
    {
        memcpy(dst->addr, src->addr, size);
    }
}
