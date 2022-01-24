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
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int /*<<< orphan*/  buffer_object; } ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct wined3d_context *context,
        const struct wined3d_bo_address *data, GLenum binding)
{
    const struct wined3d_gl_info *gl_info;

    if (!data->buffer_object)
        return;

    gl_info = context->gl_info;
    FUNC2(context, binding, data->buffer_object);
    FUNC0(FUNC3(binding));
    FUNC2(context, binding, 0);
    FUNC1("Unmap buffer object");
}