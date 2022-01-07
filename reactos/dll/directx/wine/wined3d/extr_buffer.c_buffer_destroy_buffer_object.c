
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_resource {int device; scalar_t__ bind_count; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {scalar_t__ transform_feedback_active; struct wined3d_gl_info* gl_info; } ;
struct wined3d_buffer {int bind_flags; int flags; int * fence; scalar_t__ buffer_object; struct wined3d_resource resource; } ;


 int GL_EXTCALL (int ) ;
 int STATE_CONSTANT_BUFFER (int ) ;
 int STATE_INDEXBUFFER ;
 int STATE_STREAMSRC ;
 int STATE_STREAM_OUTPUT ;
 int WARN (char*,struct wined3d_buffer*) ;
 int WINED3D_BIND_CONSTANT_BUFFER ;
 int WINED3D_BIND_INDEX_BUFFER ;
 int WINED3D_BIND_STREAM_OUTPUT ;
 int WINED3D_BIND_VERTEX_BUFFER ;
 int WINED3D_BUFFER_APPLESYNC ;
 int WINED3D_SHADER_TYPE_COMPUTE ;
 int WINED3D_SHADER_TYPE_DOMAIN ;
 int WINED3D_SHADER_TYPE_GEOMETRY ;
 int WINED3D_SHADER_TYPE_HULL ;
 int WINED3D_SHADER_TYPE_PIXEL ;
 int WINED3D_SHADER_TYPE_VERTEX ;
 int checkGLcall (char*) ;
 int context_end_transform_feedback (struct wined3d_context*) ;
 int device_invalidate_state (int ,int ) ;
 int glDeleteBuffers (int,scalar_t__*) ;
 int wined3d_fence_destroy (int *) ;

__attribute__((used)) static void buffer_destroy_buffer_object(struct wined3d_buffer *buffer, struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_resource *resource = &buffer->resource;

    if (!buffer->buffer_object)
        return;






    if (resource->bind_count)
    {
        if (buffer->bind_flags & WINED3D_BIND_VERTEX_BUFFER)
            device_invalidate_state(resource->device, STATE_STREAMSRC);
        if (buffer->bind_flags & WINED3D_BIND_INDEX_BUFFER)
            device_invalidate_state(resource->device, STATE_INDEXBUFFER);
        if (buffer->bind_flags & WINED3D_BIND_CONSTANT_BUFFER)
        {
            device_invalidate_state(resource->device, STATE_CONSTANT_BUFFER(WINED3D_SHADER_TYPE_VERTEX));
            device_invalidate_state(resource->device, STATE_CONSTANT_BUFFER(WINED3D_SHADER_TYPE_HULL));
            device_invalidate_state(resource->device, STATE_CONSTANT_BUFFER(WINED3D_SHADER_TYPE_DOMAIN));
            device_invalidate_state(resource->device, STATE_CONSTANT_BUFFER(WINED3D_SHADER_TYPE_GEOMETRY));
            device_invalidate_state(resource->device, STATE_CONSTANT_BUFFER(WINED3D_SHADER_TYPE_PIXEL));
            device_invalidate_state(resource->device, STATE_CONSTANT_BUFFER(WINED3D_SHADER_TYPE_COMPUTE));
        }
        if (buffer->bind_flags & WINED3D_BIND_STREAM_OUTPUT)
        {
            device_invalidate_state(resource->device, STATE_STREAM_OUTPUT);
            if (context->transform_feedback_active)
            {



                WARN("Deleting buffer object for buffer %p, disabling transform feedback.\n", buffer);
                context_end_transform_feedback(context);
            }
        }
    }

    GL_EXTCALL(glDeleteBuffers(1, &buffer->buffer_object));
    checkGLcall("glDeleteBuffers");
    buffer->buffer_object = 0;

    if (buffer->fence)
    {
        wined3d_fence_destroy(buffer->fence);
        buffer->fence = ((void*)0);
    }
    buffer->flags &= ~WINED3D_BUFFER_APPLESYNC;
}
