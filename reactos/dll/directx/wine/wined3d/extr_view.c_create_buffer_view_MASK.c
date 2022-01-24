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
struct wined3d_view_desc {int dummy; } ;
struct wined3d_gl_view {int dummy; } ;
struct wined3d_format {int dummy; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_gl_view*,struct wined3d_context*,struct wined3d_buffer*,struct wined3d_format const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_buffer*,struct wined3d_view_desc const*,struct wined3d_format const*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC2(struct wined3d_gl_view *view, struct wined3d_context *context,
        const struct wined3d_view_desc *desc, struct wined3d_buffer *buffer,
        const struct wined3d_format *view_format)
{
    unsigned int offset, size;

    FUNC1(buffer, desc, view_format, &offset, &size);
    FUNC0(view, context, buffer, view_format, offset, size);
}