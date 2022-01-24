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
struct gs_init_data {int dummy; } ;
struct gs_swap_chain {int /*<<< orphan*/  wi; struct gs_init_data info; int /*<<< orphan*/ * device; } ;
typedef  struct gs_swap_chain gs_swapchain_t ;
typedef  int /*<<< orphan*/  gs_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct gs_swap_chain* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gs_swap_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct gs_init_data const*) ; 
 int /*<<< orphan*/  FUNC4 (struct gs_swap_chain*) ; 

gs_swapchain_t *FUNC5(gs_device_t *device,
					const struct gs_init_data *info)
{
	struct gs_swap_chain *swap = FUNC1(sizeof(struct gs_swap_chain));

	swap->device = device;
	swap->info = *info;
	swap->wi = FUNC3(info);
	if (!swap->wi) {
		FUNC0(LOG_ERROR, "device_swapchain_create (GL) failed");
		FUNC4(swap);
		return NULL;
	}

	if (!FUNC2(swap)) {
		FUNC0(LOG_ERROR, "gl_platform_init_swapchain  failed");
		FUNC4(swap);
		return NULL;
	}

	return swap;
}