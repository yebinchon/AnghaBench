
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* p_glGetError ) () ;} ;
struct TYPE_6__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {TYPE_3__ gl_ops; scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_4__ {int usage; int size; } ;
struct wined3d_buffer {int flags; scalar_t__ buffer_object_usage; TYPE_1__ resource; int buffer_type_hint; int buffer_object; } ;
typedef scalar_t__ GLenum ;
typedef int BOOL ;


 size_t APPLE_FLUSH_BUFFER_RANGE ;
 int ERR (char*,...) ;
 int FALSE ;
 int GL_BUFFER_FLUSHING_UNMAP_APPLE ;
 int GL_BUFFER_SERIALIZED_MODIFY_APPLE ;
 int GL_EXTCALL (int ) ;
 int GL_FALSE ;
 scalar_t__ GL_NO_ERROR ;
 scalar_t__ GL_STATIC_DRAW ;
 scalar_t__ GL_STREAM_DRAW_ARB ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WINED3DUSAGE_DYNAMIC ;
 int WINED3D_BUFFER_APPLESYNC ;
 int WINED3D_BUFFER_USE_BO ;
 int buffer_bind (struct wined3d_buffer*,struct wined3d_context*) ;
 int buffer_clear_dirty_areas (struct wined3d_buffer*) ;
 int buffer_destroy_buffer_object (struct wined3d_buffer*,struct wined3d_context*) ;
 int buffer_invalidate_bo_range (struct wined3d_buffer*,int ,int ) ;
 int checkGLcall (char*) ;
 int debug_d3dusage (int) ;
 int debug_glerror (scalar_t__) ;
 int glBufferData (int ,int ,int *,scalar_t__) ;
 int glBufferParameteriAPPLE (int ,int ,int ) ;
 int glGenBuffers (int,int *) ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;
 scalar_t__ stub3 () ;
 scalar_t__ stub4 () ;

__attribute__((used)) static BOOL buffer_create_buffer_object(struct wined3d_buffer *buffer, struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    GLenum gl_usage = GL_STATIC_DRAW;
    GLenum error;

    TRACE("Creating an OpenGL buffer object for wined3d_buffer %p with usage %s.\n",
            buffer, debug_d3dusage(buffer->resource.usage));






    while (gl_info->gl_ops.gl.p_glGetError() != GL_NO_ERROR);







    GL_EXTCALL(glGenBuffers(1, &buffer->buffer_object));
    error = gl_info->gl_ops.gl.p_glGetError();
    if (!buffer->buffer_object || error != GL_NO_ERROR)
    {
        ERR("Failed to create a BO with error %s (%#x).\n", debug_glerror(error), error);
        goto fail;
    }

    buffer_bind(buffer, context);
    error = gl_info->gl_ops.gl.p_glGetError();
    if (error != GL_NO_ERROR)
    {
        ERR("Failed to bind the BO with error %s (%#x).\n", debug_glerror(error), error);
        goto fail;
    }

    if (buffer->resource.usage & WINED3DUSAGE_DYNAMIC)
    {
        TRACE("Buffer has WINED3DUSAGE_DYNAMIC set.\n");
        gl_usage = GL_STREAM_DRAW_ARB;

        if (gl_info->supported[APPLE_FLUSH_BUFFER_RANGE])
        {
            GL_EXTCALL(glBufferParameteriAPPLE(buffer->buffer_type_hint, GL_BUFFER_FLUSHING_UNMAP_APPLE, GL_FALSE));
            GL_EXTCALL(glBufferParameteriAPPLE(buffer->buffer_type_hint, GL_BUFFER_SERIALIZED_MODIFY_APPLE, GL_FALSE));
            checkGLcall("glBufferParameteriAPPLE");
            buffer->flags |= WINED3D_BUFFER_APPLESYNC;
        }

    }

    GL_EXTCALL(glBufferData(buffer->buffer_type_hint, buffer->resource.size, ((void*)0), gl_usage));
    error = gl_info->gl_ops.gl.p_glGetError();
    if (error != GL_NO_ERROR)
    {
        ERR("glBufferData failed with error %s (%#x).\n", debug_glerror(error), error);
        goto fail;
    }

    buffer->buffer_object_usage = gl_usage;
    buffer_invalidate_bo_range(buffer, 0, 0);

    return TRUE;

fail:

    ERR("Failed to create a buffer object. Continuing, but performance issues may occur.\n");
    buffer->flags &= ~WINED3D_BUFFER_USE_BO;
    buffer_destroy_buffer_object(buffer, context);
    buffer_clear_dirty_areas(buffer);
    return FALSE;
}
