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
struct wined3d_unordered_access_view {int /*<<< orphan*/  resource; } ;
struct wined3d_cs_clear_unordered_access_view {int /*<<< orphan*/  clear_value; struct wined3d_unordered_access_view* view; } ;
struct wined3d_cs {int /*<<< orphan*/  device; } ;
struct wined3d_context {int dummy; } ;

/* Variables and functions */
 struct wined3d_context* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_unordered_access_view*,int /*<<< orphan*/ *,struct wined3d_context*) ; 

__attribute__((used)) static void FUNC4(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_clear_unordered_access_view *op = data;
    struct wined3d_unordered_access_view *view = op->view;
    struct wined3d_context *context;

    context = FUNC0(cs->device, NULL, 0);
    FUNC3(view, &op->clear_value, context);
    FUNC1(context);

    FUNC2(view->resource);
}