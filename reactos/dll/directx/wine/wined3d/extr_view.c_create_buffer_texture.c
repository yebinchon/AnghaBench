
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_gl_view {int name; int target; } ;
struct TYPE_6__ {int (* p_glGenTextures ) (int,int *) ;} ;
struct TYPE_7__ {TYPE_2__ gl; } ;
struct TYPE_5__ {int texture_buffer_offset_alignment; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_3__ gl_ops; TYPE_1__ limits; } ;
struct wined3d_format {int glInternal; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_8__ {unsigned int size; } ;
struct wined3d_buffer {int buffer_object; TYPE_4__ resource; } ;


 size_t ARB_TEXTURE_BUFFER_OBJECT ;
 size_t ARB_TEXTURE_BUFFER_RANGE ;
 int FIXME (char*,...) ;
 int GL_EXTCALL (int ) ;
 int GL_TEXTURE_BUFFER ;
 int STATE_COMPUTE_SHADER_RESOURCE_BINDING ;
 int STATE_GRAPHICS_SHADER_RESOURCE_BINDING ;
 int WINED3D_LOCATION_BUFFER ;
 int checkGLcall (char*) ;
 int context_bind_texture (struct wined3d_context*,int ,int ) ;
 int context_invalidate_compute_state (struct wined3d_context*,int ) ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int glTexBuffer (int ,int ,int ) ;
 int glTexBufferRange (int ,int ,int ,unsigned int,unsigned int) ;
 int stub1 (int,int *) ;
 int wined3d_buffer_load_location (struct wined3d_buffer*,struct wined3d_context*,int ) ;

__attribute__((used)) static void create_buffer_texture(struct wined3d_gl_view *view, struct wined3d_context *context,
        struct wined3d_buffer *buffer, const struct wined3d_format *view_format,
        unsigned int offset, unsigned int size)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (!gl_info->supported[ARB_TEXTURE_BUFFER_OBJECT])
    {
        FIXME("OpenGL implementation does not support buffer textures.\n");
        return;
    }

    if ((offset & (gl_info->limits.texture_buffer_offset_alignment - 1)))
    {
        FIXME("Buffer offset %u is not %u byte aligned.\n",
                offset, gl_info->limits.texture_buffer_offset_alignment);
        return;
    }

    wined3d_buffer_load_location(buffer, context, WINED3D_LOCATION_BUFFER);

    view->target = GL_TEXTURE_BUFFER;
    gl_info->gl_ops.gl.p_glGenTextures(1, &view->name);

    context_bind_texture(context, GL_TEXTURE_BUFFER, view->name);
    if (gl_info->supported[ARB_TEXTURE_BUFFER_RANGE])
    {
        GL_EXTCALL(glTexBufferRange(GL_TEXTURE_BUFFER, view_format->glInternal,
                buffer->buffer_object, offset, size));
    }
    else
    {
        if (offset || size != buffer->resource.size)
            FIXME("OpenGL implementation does not support ARB_texture_buffer_range.\n");
        GL_EXTCALL(glTexBuffer(GL_TEXTURE_BUFFER, view_format->glInternal, buffer->buffer_object));
    }
    checkGLcall("Create buffer texture");

    context_invalidate_compute_state(context, STATE_COMPUTE_SHADER_RESOURCE_BINDING);
    context_invalidate_state(context, STATE_GRAPHICS_SHADER_RESOURCE_BINDING);
}
