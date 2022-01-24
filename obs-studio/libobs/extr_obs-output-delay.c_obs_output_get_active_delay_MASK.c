#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {unsigned long long active_delay_ns; } ;
typedef  TYPE_1__ obs_output_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*,char*) ; 

uint32_t FUNC1(const obs_output_t *output)
{
	return FUNC0(output, "obs_output_set_delay")
		       ? (uint32_t)(output->active_delay_ns / 1000000000ULL)
		       : 0;
}