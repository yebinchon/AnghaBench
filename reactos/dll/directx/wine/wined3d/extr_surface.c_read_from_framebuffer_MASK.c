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
struct TYPE_8__ {scalar_t__ draw_binding; TYPE_1__* format; struct wined3d_device* device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_4__ resource; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* p_glPixelStorei ) (int /*<<< orphan*/ ,unsigned int) ;int /*<<< orphan*/  (* p_glReadPixels ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* p_glReadBuffer ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {TYPE_3__ gl_ops; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {scalar_t__ buffer_object; int /*<<< orphan*/ * addr; } ;
struct TYPE_5__ {unsigned int byte_count; int /*<<< orphan*/  glType; int /*<<< orphan*/  glFormat; } ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_PACK_ROW_LENGTH ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_READ_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_READ_WRITE ; 
 int /*<<< orphan*/  STATE_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WINED3D_LOCATION_DRAWABLE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct wined3d_context* FUNC3 (struct wined3d_device*,struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*,int /*<<< orphan*/ ,struct wined3d_surface*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context*) ; 
 struct wined3d_surface* FUNC8 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_context*,struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC22 (struct wined3d_surface*) ; 
 scalar_t__ FUNC23 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (struct wined3d_texture*) ; 
 unsigned int FUNC25 (struct wined3d_texture*,unsigned int) ; 
 unsigned int FUNC26 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (struct wined3d_texture*,unsigned int,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC29(struct wined3d_surface *surface,
        struct wined3d_context *old_ctx, DWORD src_location, DWORD dst_location)
{
    unsigned int sub_resource_idx = FUNC22(surface);
    struct wined3d_texture *texture = surface->container;
    struct wined3d_device *device = texture->resource.device;
    struct wined3d_context *context = old_ctx;
    struct wined3d_surface *restore_rt = NULL;
    const struct wined3d_gl_info *gl_info;
    unsigned int row_pitch, slice_pitch;
    unsigned int width, height, level;
    struct wined3d_bo_address data;
    BYTE *row, *top, *bottom;
    BOOL src_is_upside_down;
    unsigned int i;
    BYTE *mem;

    FUNC27(texture, sub_resource_idx, &data, dst_location);

    restore_rt = FUNC8(old_ctx);
    if (restore_rt != surface)
        context = FUNC3(device, texture, sub_resource_idx);
    else
        restore_rt = NULL;
    gl_info = context->gl_info;

    if (src_location != texture->resource.draw_binding)
    {
        FUNC5(context, GL_READ_FRAMEBUFFER, surface, NULL, src_location);
        FUNC6(context, GL_READ_FRAMEBUFFER);
        FUNC9(context, STATE_FRAMEBUFFER);
    }
    else
    {
        FUNC4(context, device);
    }

    /* Select the correct read buffer, and give some debug output.
     * There is no need to keep track of the current read buffer or reset it,
     * every part of the code that reads sets the read buffer as desired.
     */
    if (src_location != WINED3D_LOCATION_DRAWABLE || FUNC23(&texture->resource))
    {
        /* Mapping the primary render target which is not on a swapchain.
         * Read from the back buffer. */
        FUNC1("Mapping offscreen render target.\n");
        gl_info->gl_ops.gl.p_glReadBuffer(FUNC7(context));
        src_is_upside_down = TRUE;
    }
    else
    {
        /* Onscreen surfaces are always part of a swapchain */
        GLenum buffer = FUNC24(texture);
        FUNC1("Mapping %#x buffer.\n", buffer);
        gl_info->gl_ops.gl.p_glReadBuffer(buffer);
        src_is_upside_down = FALSE;
    }
    FUNC2("glReadBuffer");

    if (data.buffer_object)
    {
        FUNC0(FUNC11(GL_PIXEL_PACK_BUFFER, data.buffer_object));
        FUNC2("glBindBuffer");
    }

    level = sub_resource_idx % texture->level_count;
    FUNC28(texture, level, &row_pitch, &slice_pitch);

    /* Setup pixel store pack state -- to glReadPixels into the correct place */
    gl_info->gl_ops.gl.p_glPixelStorei(GL_PACK_ROW_LENGTH, row_pitch / texture->resource.format->byte_count);
    FUNC2("glPixelStorei");

    width = FUNC26(texture, level);
    height = FUNC25(texture, level);
    gl_info->gl_ops.gl.p_glReadPixels(0, 0, width, height,
            texture->resource.format->glFormat,
            texture->resource.format->glType, data.addr);
    FUNC2("glReadPixels");

    /* Reset previous pixel store pack state */
    gl_info->gl_ops.gl.p_glPixelStorei(GL_PACK_ROW_LENGTH, 0);
    FUNC2("glPixelStorei");

    if (!src_is_upside_down)
    {
        /* glReadPixels returns the image upside down, and there is no way to
         * prevent this. Flip the lines in software. */

        if (!(row = FUNC14(row_pitch)))
            goto error;

        if (data.buffer_object)
        {
            mem = FUNC0(FUNC12(GL_PIXEL_PACK_BUFFER, GL_READ_WRITE));
            FUNC2("glMapBuffer");
        }
        else
            mem = data.addr;

        top = mem;
        bottom = mem + row_pitch * (height - 1);
        for (i = 0; i < height / 2; i++)
        {
            FUNC16(row, top, row_pitch);
            FUNC16(top, bottom, row_pitch);
            FUNC16(bottom, row, row_pitch);
            top += row_pitch;
            bottom -= row_pitch;
        }
        FUNC15(row);

        if (data.buffer_object)
            FUNC0(FUNC13(GL_PIXEL_PACK_BUFFER));
    }

error:
    if (data.buffer_object)
    {
        FUNC0(FUNC11(GL_PIXEL_PACK_BUFFER, 0));
        FUNC2("glBindBuffer");
    }

    if (restore_rt)
        FUNC10(context, restore_rt);
}