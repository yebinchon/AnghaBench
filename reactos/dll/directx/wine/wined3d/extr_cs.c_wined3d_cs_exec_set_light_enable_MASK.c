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
struct wined3d_light_info {int glIndex; } ;
struct wined3d_device {TYPE_1__* adapter; } ;
struct wined3d_cs_set_light_enable {scalar_t__ enable; int /*<<< orphan*/  idx; } ;
struct wined3d_cs {int /*<<< orphan*/  state; struct wined3d_device* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  d3d_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  STATE_LIGHT_TYPE ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wined3d_light_info*,scalar_t__) ; 
 struct wined3d_light_info* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_light_enable *op = data;
    struct wined3d_device *device = cs->device;
    struct wined3d_light_info *light_info;
    int prev_idx;

    if (!(light_info = FUNC4(&cs->state, op->idx)))
    {
        FUNC0("Light doesn't exist.\n");
        return;
    }

    prev_idx = light_info->glIndex;
    FUNC3(&cs->state, &device->adapter->d3d_info, light_info, op->enable);
    if (light_info->glIndex != prev_idx)
    {
        FUNC2(device, STATE_LIGHT_TYPE);
        FUNC2(device, FUNC1(op->enable ? light_info->glIndex : prev_idx));
    }
}