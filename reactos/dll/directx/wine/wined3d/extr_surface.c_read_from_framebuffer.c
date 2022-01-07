
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ draw_binding; TYPE_1__* format; struct wined3d_device* device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_4__ resource; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct TYPE_6__ {int (* p_glPixelStorei ) (int ,unsigned int) ;int (* p_glReadPixels ) (int ,int ,unsigned int,unsigned int,int ,int ,int *) ;int (* p_glReadBuffer ) (int ) ;} ;
struct TYPE_7__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {TYPE_3__ gl_ops; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {scalar_t__ buffer_object; int * addr; } ;
struct TYPE_5__ {unsigned int byte_count; int glType; int glFormat; } ;
typedef int GLenum ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int * GL_EXTCALL (int ) ;
 int GL_PACK_ROW_LENGTH ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_READ_FRAMEBUFFER ;
 int GL_READ_WRITE ;
 int STATE_FRAMEBUFFER ;
 int TRACE (char*,...) ;
 int TRUE ;
 scalar_t__ WINED3D_LOCATION_DRAWABLE ;
 int checkGLcall (char*) ;
 struct wined3d_context* context_acquire (struct wined3d_device*,struct wined3d_texture*,unsigned int) ;
 int context_apply_blit_state (struct wined3d_context*,struct wined3d_device*) ;
 int context_apply_fbo_state_blit (struct wined3d_context*,int ,struct wined3d_surface*,int *,scalar_t__) ;
 int context_check_fbo_status (struct wined3d_context*,int ) ;
 int context_get_offscreen_gl_buffer (struct wined3d_context*) ;
 struct wined3d_surface* context_get_rt_surface (struct wined3d_context*) ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int context_restore (struct wined3d_context*,struct wined3d_surface*) ;
 int glBindBuffer (int ,scalar_t__) ;
 int glMapBuffer (int ,int ) ;
 int glUnmapBuffer (int ) ;
 int * heap_alloc (unsigned int) ;
 int heap_free (int *) ;
 int memcpy (int *,int *,unsigned int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ,unsigned int) ;
 int stub4 (int ,int ,unsigned int,unsigned int,int ,int ,int *) ;
 int stub5 (int ,unsigned int) ;
 unsigned int surface_get_sub_resource_idx (struct wined3d_surface*) ;
 scalar_t__ wined3d_resource_is_offscreen (TYPE_4__*) ;
 int wined3d_texture_get_gl_buffer (struct wined3d_texture*) ;
 unsigned int wined3d_texture_get_level_height (struct wined3d_texture*,unsigned int) ;
 unsigned int wined3d_texture_get_level_width (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_get_memory (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,scalar_t__) ;
 int wined3d_texture_get_pitch (struct wined3d_texture*,unsigned int,unsigned int*,unsigned int*) ;

__attribute__((used)) static void read_from_framebuffer(struct wined3d_surface *surface,
        struct wined3d_context *old_ctx, DWORD src_location, DWORD dst_location)
{
    unsigned int sub_resource_idx = surface_get_sub_resource_idx(surface);
    struct wined3d_texture *texture = surface->container;
    struct wined3d_device *device = texture->resource.device;
    struct wined3d_context *context = old_ctx;
    struct wined3d_surface *restore_rt = ((void*)0);
    const struct wined3d_gl_info *gl_info;
    unsigned int row_pitch, slice_pitch;
    unsigned int width, height, level;
    struct wined3d_bo_address data;
    BYTE *row, *top, *bottom;
    BOOL src_is_upside_down;
    unsigned int i;
    BYTE *mem;

    wined3d_texture_get_memory(texture, sub_resource_idx, &data, dst_location);

    restore_rt = context_get_rt_surface(old_ctx);
    if (restore_rt != surface)
        context = context_acquire(device, texture, sub_resource_idx);
    else
        restore_rt = ((void*)0);
    gl_info = context->gl_info;

    if (src_location != texture->resource.draw_binding)
    {
        context_apply_fbo_state_blit(context, GL_READ_FRAMEBUFFER, surface, ((void*)0), src_location);
        context_check_fbo_status(context, GL_READ_FRAMEBUFFER);
        context_invalidate_state(context, STATE_FRAMEBUFFER);
    }
    else
    {
        context_apply_blit_state(context, device);
    }





    if (src_location != WINED3D_LOCATION_DRAWABLE || wined3d_resource_is_offscreen(&texture->resource))
    {


        TRACE("Mapping offscreen render target.\n");
        gl_info->gl_ops.gl.p_glReadBuffer(context_get_offscreen_gl_buffer(context));
        src_is_upside_down = TRUE;
    }
    else
    {

        GLenum buffer = wined3d_texture_get_gl_buffer(texture);
        TRACE("Mapping %#x buffer.\n", buffer);
        gl_info->gl_ops.gl.p_glReadBuffer(buffer);
        src_is_upside_down = FALSE;
    }
    checkGLcall("glReadBuffer");

    if (data.buffer_object)
    {
        GL_EXTCALL(glBindBuffer(GL_PIXEL_PACK_BUFFER, data.buffer_object));
        checkGLcall("glBindBuffer");
    }

    level = sub_resource_idx % texture->level_count;
    wined3d_texture_get_pitch(texture, level, &row_pitch, &slice_pitch);


    gl_info->gl_ops.gl.p_glPixelStorei(GL_PACK_ROW_LENGTH, row_pitch / texture->resource.format->byte_count);
    checkGLcall("glPixelStorei");

    width = wined3d_texture_get_level_width(texture, level);
    height = wined3d_texture_get_level_height(texture, level);
    gl_info->gl_ops.gl.p_glReadPixels(0, 0, width, height,
            texture->resource.format->glFormat,
            texture->resource.format->glType, data.addr);
    checkGLcall("glReadPixels");


    gl_info->gl_ops.gl.p_glPixelStorei(GL_PACK_ROW_LENGTH, 0);
    checkGLcall("glPixelStorei");

    if (!src_is_upside_down)
    {



        if (!(row = heap_alloc(row_pitch)))
            goto error;

        if (data.buffer_object)
        {
            mem = GL_EXTCALL(glMapBuffer(GL_PIXEL_PACK_BUFFER, GL_READ_WRITE));
            checkGLcall("glMapBuffer");
        }
        else
            mem = data.addr;

        top = mem;
        bottom = mem + row_pitch * (height - 1);
        for (i = 0; i < height / 2; i++)
        {
            memcpy(row, top, row_pitch);
            memcpy(top, bottom, row_pitch);
            memcpy(bottom, row, row_pitch);
            top += row_pitch;
            bottom -= row_pitch;
        }
        heap_free(row);

        if (data.buffer_object)
            GL_EXTCALL(glUnmapBuffer(GL_PIXEL_PACK_BUFFER));
    }

error:
    if (data.buffer_object)
    {
        GL_EXTCALL(glBindBuffer(GL_PIXEL_PACK_BUFFER, 0));
        checkGLcall("glBindBuffer");
    }

    if (restore_rt)
        context_restore(context, restore_rt);
}
