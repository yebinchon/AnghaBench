#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int format_flags; struct wined3d_format* format; } ;
struct wined3d_texture {unsigned int level_count; TYPE_1__ resource; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int conv_byte_count; int /*<<< orphan*/  glType; int /*<<< orphan*/  glFormat; int /*<<< orphan*/  (* upload ) (void*,void*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;} ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_const_bo_address {void* addr; scalar_t__ buffer_object; } ;
struct wined3d_box {unsigned int left; unsigned int top; unsigned int front; unsigned int right; unsigned int bottom; unsigned int back; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  GL_TEXTURE_3D ; 
 int /*<<< orphan*/  FUNC3 (char*,struct wined3d_texture*,unsigned int,struct wined3d_context const*,int /*<<< orphan*/ ,scalar_t__,void*,unsigned int,unsigned int) ; 
 int WINED3DFMT_FLAG_BLOCKS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_box const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 void* FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*,void*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC11 (struct wined3d_texture*,unsigned int) ; 
 unsigned int FUNC12 (struct wined3d_texture*,unsigned int) ; 
 unsigned int FUNC13 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_texture*,unsigned int,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC15(struct wined3d_texture *texture, unsigned int sub_resource_idx,
        const struct wined3d_context *context, const struct wined3d_box *box,
        const struct wined3d_const_bo_address *data, unsigned int row_pitch, unsigned int slice_pitch)
{
    const struct wined3d_format *format = texture->resource.format;
    unsigned int level = sub_resource_idx % texture->level_count;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    unsigned int x, y, z, update_w, update_h, update_d;
    unsigned int dst_row_pitch, dst_slice_pitch;
    unsigned int width, height, depth;
    const void *mem = data->addr;
    void *converted_mem = NULL;

    FUNC3("texture %p, sub_resource_idx %u, context %p, box %s, data {%#x:%p}, row_pitch %#x, slice_pitch %#x.\n",
            texture, sub_resource_idx, context, FUNC5(box),
            data->buffer_object, data->addr, row_pitch, slice_pitch);

    width = FUNC13(texture, level);
    height = FUNC12(texture, level);
    depth = FUNC11(texture, level);

    if (!box)
    {
        x = y = z = 0;
        update_w = width;
        update_h = height;
        update_d = depth;
    }
    else
    {
        x = box->left;
        y = box->top;
        z = box->front;
        update_w = box->right - box->left;
        update_h = box->bottom - box->top;
        update_d = box->back - box->front;
    }

    if (format->conv_byte_count)
    {
        if (data->buffer_object)
            FUNC0("Loading a converted texture from a PBO.\n");
        if (texture->resource.format_flags & WINED3DFMT_FLAG_BLOCKS)
            FUNC0("Converting a block-based format.\n");

        dst_row_pitch = update_w * format->conv_byte_count;
        dst_slice_pitch = dst_row_pitch * update_h;

        converted_mem = FUNC8(update_d, dst_slice_pitch);
        format->upload(data->addr, converted_mem, row_pitch, slice_pitch,
                dst_row_pitch, dst_slice_pitch, update_w, update_h, update_d);
        mem = converted_mem;
    }
    else
    {
        FUNC14(texture, sub_resource_idx, &dst_row_pitch, &dst_slice_pitch);
        if (row_pitch != dst_row_pitch || slice_pitch != dst_slice_pitch)
            FUNC1("Ignoring row/slice pitch (%u/%u).\n", row_pitch, slice_pitch);
    }

    if (data->buffer_object)
    {
        FUNC2(FUNC6(GL_PIXEL_UNPACK_BUFFER, data->buffer_object));
        FUNC4("glBindBuffer");
    }

    FUNC2(FUNC7(GL_TEXTURE_3D, level, x, y, z,
            update_w, update_h, update_d, format->glFormat, format->glType, mem));
    FUNC4("glTexSubImage3D");

    if (data->buffer_object)
    {
        FUNC2(FUNC6(GL_PIXEL_UNPACK_BUFFER, 0));
        FUNC4("glBindBuffer");
    }

    FUNC9(converted_mem);
}