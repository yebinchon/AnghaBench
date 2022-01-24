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
struct wined3d_bo_address {void* addr; int /*<<< orphan*/  buffer_object; } ;
typedef  int /*<<< orphan*/  INT_PTR ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int GLbitfield ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  void BYTE ;

/* Variables and functions */
 size_t ARB_MAP_BUFFER_RANGE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int GL_MAP_FLUSH_EXPLICIT_BIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

void *FUNC7(struct wined3d_context *context,
        const struct wined3d_bo_address *data, size_t size, GLenum binding, DWORD flags)
{
    const struct wined3d_gl_info *gl_info;
    BYTE *memory;

    if (!data->buffer_object)
        return data->addr;

    gl_info = context->gl_info;
    FUNC2(context, binding, data->buffer_object);

    if (gl_info->supported[ARB_MAP_BUFFER_RANGE])
    {
        GLbitfield map_flags = FUNC6(flags) & ~GL_MAP_FLUSH_EXPLICIT_BIT;
        memory = FUNC0(FUNC4(binding, (INT_PTR)data->addr, size, map_flags));
    }
    else
    {
        memory = FUNC0(FUNC3(binding, FUNC5(flags)));
        memory += (INT_PTR)data->addr;
    }

    FUNC2(context, binding, 0);
    FUNC1("Map buffer object");

    return memory;
}