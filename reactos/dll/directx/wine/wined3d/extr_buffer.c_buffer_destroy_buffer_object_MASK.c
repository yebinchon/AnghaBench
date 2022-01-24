#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_resource {int /*<<< orphan*/  device; scalar_t__ bind_count; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {scalar_t__ transform_feedback_active; struct wined3d_gl_info* gl_info; } ;
struct wined3d_buffer {int bind_flags; int /*<<< orphan*/  flags; int /*<<< orphan*/ * fence; scalar_t__ buffer_object; struct wined3d_resource resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_INDEXBUFFER ; 
 int /*<<< orphan*/  STATE_STREAMSRC ; 
 int /*<<< orphan*/  STATE_STREAM_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (char*,struct wined3d_buffer*) ; 
 int WINED3D_BIND_CONSTANT_BUFFER ; 
 int WINED3D_BIND_INDEX_BUFFER ; 
 int WINED3D_BIND_STREAM_OUTPUT ; 
 int WINED3D_BIND_VERTEX_BUFFER ; 
 int /*<<< orphan*/  WINED3D_BUFFER_APPLESYNC ; 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_COMPUTE ; 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_DOMAIN ; 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_GEOMETRY ; 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_HULL ; 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_PIXEL ; 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_VERTEX ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct wined3d_buffer *buffer, struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_resource *resource = &buffer->resource;

    if (!buffer->buffer_object)
        return;

    /* The stream source state handler might have read the memory of the
     * vertex buffer already and got the memory in the vbo which is not
     * valid any longer. Dirtify the stream source to force a reload. This
     * happens only once per changed vertexbuffer and should occur rather
     * rarely. */
    if (resource->bind_count)
    {
        if (buffer->bind_flags & WINED3D_BIND_VERTEX_BUFFER)
            FUNC5(resource->device, STATE_STREAMSRC);
        if (buffer->bind_flags & WINED3D_BIND_INDEX_BUFFER)
            FUNC5(resource->device, STATE_INDEXBUFFER);
        if (buffer->bind_flags & WINED3D_BIND_CONSTANT_BUFFER)
        {
            FUNC5(resource->device, FUNC1(WINED3D_SHADER_TYPE_VERTEX));
            FUNC5(resource->device, FUNC1(WINED3D_SHADER_TYPE_HULL));
            FUNC5(resource->device, FUNC1(WINED3D_SHADER_TYPE_DOMAIN));
            FUNC5(resource->device, FUNC1(WINED3D_SHADER_TYPE_GEOMETRY));
            FUNC5(resource->device, FUNC1(WINED3D_SHADER_TYPE_PIXEL));
            FUNC5(resource->device, FUNC1(WINED3D_SHADER_TYPE_COMPUTE));
        }
        if (buffer->bind_flags & WINED3D_BIND_STREAM_OUTPUT)
        {
            FUNC5(resource->device, STATE_STREAM_OUTPUT);
            if (context->transform_feedback_active)
            {
                /* We have to make sure that transform feedback is not active
                 * when deleting a potentially bound transform feedback buffer.
                 * This may happen when the device is being destroyed. */
                FUNC2("Deleting buffer object for buffer %p, disabling transform feedback.\n", buffer);
                FUNC4(context);
            }
        }
    }

    FUNC0(FUNC6(1, &buffer->buffer_object));
    FUNC3("glDeleteBuffers");
    buffer->buffer_object = 0;

    if (buffer->fence)
    {
        FUNC7(buffer->fence);
        buffer->fence = NULL;
    }
    buffer->flags &= ~WINED3D_BUFFER_APPLESYNC;
}