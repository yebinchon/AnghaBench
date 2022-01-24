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
typedef  int /*<<< orphan*/  gs_samplerstate_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* device_load_samplerstate ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  device; TYPE_1__ exports; } ;
typedef  TYPE_2__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* thread_graphics ; 

void FUNC2(gs_samplerstate_t *samplerstate, int unit)
{
	graphics_t *graphics = thread_graphics;

	if (!FUNC0("gs_load_samplerstate"))
		return;

	graphics->exports.device_load_samplerstate(graphics->device,
						   samplerstate, unit);
}