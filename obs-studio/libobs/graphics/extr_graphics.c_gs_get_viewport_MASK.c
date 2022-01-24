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
struct gs_rect {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* device_get_viewport ) (int /*<<< orphan*/ ,struct gs_rect*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  device; TYPE_1__ exports; } ;
typedef  TYPE_2__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct gs_rect*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gs_rect*) ; 
 TYPE_2__* thread_graphics ; 

void FUNC2(struct gs_rect *rect)
{
	graphics_t *graphics = thread_graphics;

	if (!FUNC0("gs_get_viewport", rect))
		return;

	graphics->exports.device_get_viewport(graphics->device, rect);
}