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
struct wined3d_shader_resource_view {int /*<<< orphan*/  resource; } ;
struct wined3d_cs_generate_mipmaps {struct wined3d_shader_resource_view* view; } ;
struct wined3d_cs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_shader_resource_view*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_generate_mipmaps *op = data;
    struct wined3d_shader_resource_view *view = op->view;

    FUNC0(view);
    FUNC1(view->resource);
}