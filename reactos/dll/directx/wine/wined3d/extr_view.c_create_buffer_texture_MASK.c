#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wined3d_gl_view {int /*<<< orphan*/  name; int /*<<< orphan*/  target; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* p_glGenTextures ) (int,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {TYPE_2__ gl; } ;
struct TYPE_5__ {int texture_buffer_offset_alignment; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_3__ gl_ops; TYPE_1__ limits; } ;
struct wined3d_format {int /*<<< orphan*/  glInternal; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_8__ {unsigned int size; } ;
struct wined3d_buffer {int /*<<< orphan*/  buffer_object; TYPE_4__ resource; } ;

/* Variables and functions */
 size_t ARB_TEXTURE_BUFFER_OBJECT ; 
 size_t ARB_TEXTURE_BUFFER_RANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TEXTURE_BUFFER ; 
 int /*<<< orphan*/  STATE_COMPUTE_SHADER_RESOURCE_BINDING ; 
 int /*<<< orphan*/  STATE_GRAPHICS_SHADER_RESOURCE_BINDING ; 
 int /*<<< orphan*/  WINED3D_LOCATION_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_buffer*,struct wined3d_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct wined3d_gl_view *view, struct wined3d_context *context,
        struct wined3d_buffer *buffer, const struct wined3d_format *view_format,
        unsigned int offset, unsigned int size)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (!gl_info->supported[ARB_TEXTURE_BUFFER_OBJECT])
    {
        FUNC0("OpenGL implementation does not support buffer textures.\n");
        return;
    }

    if ((offset & (gl_info->limits.texture_buffer_offset_alignment - 1)))
    {
        FUNC0("Buffer offset %u is not %u byte aligned.\n",
                offset, gl_info->limits.texture_buffer_offset_alignment);
        return;
    }

    FUNC9(buffer, context, WINED3D_LOCATION_BUFFER);

    view->target = GL_TEXTURE_BUFFER;
    gl_info->gl_ops.gl.p_glGenTextures(1, &view->name);

    FUNC3(context, GL_TEXTURE_BUFFER, view->name);
    if (gl_info->supported[ARB_TEXTURE_BUFFER_RANGE])
    {
        FUNC1(FUNC7(GL_TEXTURE_BUFFER, view_format->glInternal,
                buffer->buffer_object, offset, size));
    }
    else
    {
        if (offset || size != buffer->resource.size)
            FUNC0("OpenGL implementation does not support ARB_texture_buffer_range.\n");
        FUNC1(FUNC6(GL_TEXTURE_BUFFER, view_format->glInternal, buffer->buffer_object));
    }
    FUNC2("Create buffer texture");

    FUNC4(context, STATE_COMPUTE_SHADER_RESOURCE_BINDING);
    FUNC5(context, STATE_GRAPHICS_SHADER_RESOURCE_BINDING);
}