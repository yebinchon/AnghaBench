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
struct TYPE_4__ {int dwFlags; } ;
struct d3d_light {TYPE_2__ light; int /*<<< orphan*/  dwLightIndex; TYPE_1__* active_viewport; } ;
struct d3d_device {int /*<<< orphan*/  IDirect3DDevice7_iface; } ;
struct TYPE_3__ {struct d3d_device* active_device; } ;

/* Variables and functions */
 int D3DLIGHT_ACTIVE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct d3d_light*) ; 

void FUNC2(struct d3d_light *light)
{
    struct d3d_device *device;

    FUNC1("light %p.\n", light);

    if (!light->active_viewport || !light->active_viewport->active_device) return;
    device = light->active_viewport->active_device;

    if (light->light.dwFlags & D3DLIGHT_ACTIVE)
    {
        FUNC0(&device->IDirect3DDevice7_iface, light->dwLightIndex, FALSE);
        light->light.dwFlags &= ~D3DLIGHT_ACTIVE;
    }
}