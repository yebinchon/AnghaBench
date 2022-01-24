#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* device_frustum ) (int /*<<< orphan*/ ,float,float,float,float,float,float) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  device; TYPE_1__ exports; } ;
typedef  TYPE_2__ graphics_t ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,float,float,float,float,float) ; 
 float FUNC3 (float) ; 
 TYPE_2__* thread_graphics ; 

void FUNC4(float angle, float aspect, float near, float far)
{
	graphics_t *graphics = thread_graphics;
	float xmin, xmax, ymin, ymax;

	if (!FUNC1("gs_perspective"))
		return;

	ymax = near * FUNC3(FUNC0(angle) * 0.5f);
	ymin = -ymax;

	xmin = ymin * aspect;
	xmax = ymax * aspect;

	graphics->exports.device_frustum(graphics->device, xmin, xmax, ymin,
					 ymax, near, far);
}