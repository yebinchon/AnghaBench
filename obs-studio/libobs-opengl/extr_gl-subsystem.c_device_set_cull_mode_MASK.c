#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cur_cull_mode; } ;
typedef  TYPE_1__ gs_device_t ;
typedef  enum gs_cull_mode { ____Placeholder_gs_cull_mode } gs_cull_mode ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BACK ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int GS_BACK ; 
 int GS_FRONT ; 
 scalar_t__ GS_NEITHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(gs_device_t *device, enum gs_cull_mode mode)
{
	if (device->cur_cull_mode == mode)
		return;

	if (device->cur_cull_mode == GS_NEITHER)
		FUNC2(GL_CULL_FACE);

	device->cur_cull_mode = mode;

	if (mode == GS_BACK)
		FUNC0(GL_BACK);
	else if (mode == GS_FRONT)
		FUNC0(GL_FRONT);
	else
		FUNC1(GL_CULL_FACE);
}