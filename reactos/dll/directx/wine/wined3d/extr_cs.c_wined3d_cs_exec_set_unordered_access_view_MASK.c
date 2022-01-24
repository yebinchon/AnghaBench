#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_unordered_access_view {TYPE_2__* resource; } ;
struct wined3d_cs_set_unordered_access_view {size_t pipeline; size_t view_idx; unsigned int initial_count; struct wined3d_unordered_access_view* view; } ;
struct TYPE_3__ {struct wined3d_unordered_access_view*** unordered_access_view; } ;
struct wined3d_cs {int /*<<< orphan*/  device; TYPE_1__ state; } ;
struct TYPE_4__ {int /*<<< orphan*/  bind_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_unordered_access_view*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_unordered_access_view *op = data;
    struct wined3d_unordered_access_view *prev;

    prev = cs->state.unordered_access_view[op->pipeline][op->view_idx];
    cs->state.unordered_access_view[op->pipeline][op->view_idx] = op->view;

    if (op->view)
        FUNC1(&op->view->resource->bind_count);
    if (prev)
        FUNC0(&prev->resource->bind_count);

    if (op->view && op->initial_count != ~0u)
        FUNC4(op->view, op->initial_count);

    FUNC3(cs->device, FUNC2(op->pipeline));
}