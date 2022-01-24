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
struct d3drm_viewport {int /*<<< orphan*/  d3drm; int /*<<< orphan*/  camera; int /*<<< orphan*/  material; scalar_t__ d3d_viewport; int /*<<< orphan*/  obj; int /*<<< orphan*/  IDirect3DRMViewport_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DRMObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct d3drm_viewport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct d3drm_viewport*) ; 

__attribute__((used)) static void FUNC7(struct d3drm_viewport *viewport)
{
    FUNC4("viewport %p releasing attached interfaces.\n", viewport);

    FUNC5((IDirect3DRMObject *)&viewport->IDirect3DRMViewport_iface, &viewport->obj);

    if (viewport->d3d_viewport)
    {
        FUNC3(viewport->d3d_viewport);
        FUNC0(viewport->material);
        FUNC1(viewport->camera);
        FUNC2(viewport->d3drm);
    }

    FUNC6(viewport);
}