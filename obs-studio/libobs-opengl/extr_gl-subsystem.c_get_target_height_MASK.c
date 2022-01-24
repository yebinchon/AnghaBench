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
typedef  int /*<<< orphan*/  uint32_t ;
struct gs_device {TYPE_1__* cur_render_target; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ GS_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC0 (struct gs_device const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline uint32_t FUNC3(const struct gs_device *device)
{
	if (!device->cur_render_target)
		return FUNC0(device);

	if (device->cur_render_target->type == GS_TEXTURE_2D)
		return FUNC2(device->cur_render_target);
	else /* cube map */
		return FUNC1(device->cur_render_target);
}