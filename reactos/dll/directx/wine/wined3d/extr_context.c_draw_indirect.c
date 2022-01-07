
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int gl_primitive_type; scalar_t__ index_offset; } ;
struct wined3d_indirect_draw_parameters {scalar_t__ offset; struct wined3d_buffer* buffer; } ;
struct wined3d_gl_info {int * supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_buffer {int buffer_object; } ;
typedef scalar_t__ GLintptr ;
typedef int GLenum ;


 size_t ARB_DRAW_INDIRECT ;
 int FIXME (char*,...) ;
 int GL_DRAW_INDIRECT_BUFFER ;
 int GL_EXTCALL (int ) ;
 int GL_UNSIGNED_INT ;
 int GL_UNSIGNED_SHORT ;
 int checkGLcall (char*) ;
 int glBindBuffer (int ,int ) ;
 int glDrawArraysIndirect (int ,void const*) ;
 int glDrawElementsIndirect (int ,int ,void const*) ;

__attribute__((used)) static void draw_indirect(struct wined3d_context *context, const struct wined3d_state *state,
        const struct wined3d_indirect_draw_parameters *parameters, unsigned int idx_size)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_buffer *buffer = parameters->buffer;
    const void *offset;

    if (!gl_info->supported[ARB_DRAW_INDIRECT])
    {
        FIXME("OpenGL implementation does not support indirect draws.\n");
        return;
    }

    GL_EXTCALL(glBindBuffer(GL_DRAW_INDIRECT_BUFFER, buffer->buffer_object));

    offset = (void *)(GLintptr)parameters->offset;
    if (idx_size)
    {
        GLenum idx_type = idx_size == 2 ? GL_UNSIGNED_SHORT : GL_UNSIGNED_INT;
        if (state->index_offset)
            FIXME("Ignoring index offset %u.\n", state->index_offset);
        GL_EXTCALL(glDrawElementsIndirect(state->gl_primitive_type, idx_type, offset));
    }
    else
    {
        GL_EXTCALL(glDrawArraysIndirect(state->gl_primitive_type, offset));
    }

    GL_EXTCALL(glBindBuffer(GL_DRAW_INDIRECT_BUFFER, 0));

    checkGLcall("draw indirect");
}
