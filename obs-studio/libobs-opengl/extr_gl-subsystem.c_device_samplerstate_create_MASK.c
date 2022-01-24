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
struct gs_sampler_state {int ref; int /*<<< orphan*/ * device; } ;
struct gs_sampler_info {int dummy; } ;
typedef  struct gs_sampler_state gs_samplerstate_t ;
typedef  int /*<<< orphan*/  gs_device_t ;

/* Variables and functions */
 struct gs_sampler_state* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gs_sampler_state*,struct gs_sampler_info const*) ; 

gs_samplerstate_t *
FUNC2(gs_device_t *device,
			   const struct gs_sampler_info *info)
{
	struct gs_sampler_state *sampler;

	sampler = FUNC0(sizeof(struct gs_sampler_state));
	sampler->device = device;
	sampler->ref = 1;

	FUNC1(sampler, info);
	return sampler;
}