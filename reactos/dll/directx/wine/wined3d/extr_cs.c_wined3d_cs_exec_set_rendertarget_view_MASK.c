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
struct wined3d_cs_set_rendertarget_view {size_t view_idx; int /*<<< orphan*/  view; } ;
struct TYPE_2__ {int /*<<< orphan*/ * render_targets; } ;
struct wined3d_cs {int /*<<< orphan*/  device; TYPE_1__ fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_rendertarget_view *op = data;

    cs->fb.render_targets[op->view_idx] = op->view;
    FUNC0(cs->device, STATE_FRAMEBUFFER);
}