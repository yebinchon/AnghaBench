#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  wi; TYPE_4__* device; } ;
typedef  TYPE_1__ gs_swapchain_t ;
struct TYPE_7__ {TYPE_1__* cur_swap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(gs_swapchain_t *swapchain)
{
	if (!swapchain)
		return;

	if (swapchain->device->cur_swap == swapchain)
		FUNC1(swapchain->device, NULL);

	FUNC2(swapchain);

	FUNC3(swapchain->wi);
	FUNC0(swapchain);
}