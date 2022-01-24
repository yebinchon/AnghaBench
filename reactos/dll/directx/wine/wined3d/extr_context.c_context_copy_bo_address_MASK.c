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
struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int /*<<< orphan*/ * addr; scalar_t__ buffer_object; } ;
typedef  int /*<<< orphan*/  GLintptr ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t ARB_COPY_BUFFER ; 
 int /*<<< orphan*/  GL_COPY_READ_BUFFER ; 
 int /*<<< orphan*/  GL_COPY_WRITE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINED3D_MAP_READ ; 
 int /*<<< orphan*/  WINED3D_MAP_WRITE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (struct wined3d_context*,struct wined3d_bo_address const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,struct wined3d_bo_address const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

void FUNC10(struct wined3d_context *context,
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
            FUNC0(FUNC5(GL_COPY_READ_BUFFER, src->buffer_object));
            FUNC0(FUNC5(GL_COPY_WRITE_BUFFER, dst->buffer_object));
            FUNC0(FUNC7(GL_COPY_READ_BUFFER, GL_COPY_WRITE_BUFFER,
                    (GLintptr)src->addr, (GLintptr)dst->addr, size));
            FUNC1("direct buffer copy");
        }
        else
        {
            src_ptr = FUNC3(context, src, size, src_binding, WINED3D_MAP_READ);
            dst_ptr = FUNC3(context, dst, size, dst_binding, WINED3D_MAP_WRITE);

            FUNC9(dst_ptr, src_ptr, size);

            FUNC4(context, dst, dst_binding);
            FUNC4(context, src, src_binding);
        }
    }
    else if (!dst->buffer_object && src->buffer_object)
    {
        FUNC2(context, src_binding, src->buffer_object);
        FUNC0(FUNC8(src_binding, (GLintptr)src->addr, size, dst->addr));
        FUNC1("buffer download");
    }
    else if (dst->buffer_object && !src->buffer_object)
    {
        FUNC2(context, dst_binding, dst->buffer_object);
        FUNC0(FUNC6(dst_binding, (GLintptr)dst->addr, size, src->addr));
        FUNC1("buffer upload");
    }
    else
    {
        FUNC9(dst->addr, src->addr, size);
    }
}