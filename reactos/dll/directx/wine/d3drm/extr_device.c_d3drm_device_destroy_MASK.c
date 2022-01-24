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
struct d3drm_device {int /*<<< orphan*/  d3drm; scalar_t__ ddraw; int /*<<< orphan*/  clipper; scalar_t__ primary_surface; scalar_t__ render_target; scalar_t__ device; int /*<<< orphan*/  obj; int /*<<< orphan*/  IDirect3DRMDevice_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DRMObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct d3drm_device*) ; 

void FUNC8(struct d3drm_device *device)
{
    FUNC6((IDirect3DRMObject *)&device->IDirect3DRMDevice_iface, &device->obj);
    if (device->device)
    {
        FUNC5("Releasing attached ddraw interfaces.\n");
        FUNC0(device->device);
    }
    if (device->render_target)
        FUNC3(device->render_target);
    if (device->primary_surface)
    {
        FUNC5("Releasing primary surface and attached clipper.\n");
        FUNC3(device->primary_surface);
        FUNC2(device->clipper);
    }
    if (device->ddraw)
    {
        FUNC4(device->ddraw);
        FUNC1(device->d3drm);
    }
    FUNC7(device);
}