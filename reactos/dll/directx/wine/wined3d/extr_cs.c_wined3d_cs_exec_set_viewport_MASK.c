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
struct wined3d_cs_set_viewport {int /*<<< orphan*/  viewport; } ;
struct TYPE_2__ {int /*<<< orphan*/  viewport; } ;
struct wined3d_cs {int /*<<< orphan*/  device; TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_VIEWPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_viewport *op = data;

    cs->state.viewport = op->viewport;
    FUNC0(cs->device, STATE_VIEWPORT);
}