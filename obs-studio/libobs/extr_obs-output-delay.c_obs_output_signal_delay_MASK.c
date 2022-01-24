#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct calldata {int dummy; } ;
typedef  int /*<<< orphan*/  stack ;
struct TYPE_5__ {int /*<<< orphan*/  signals; } ;
struct TYPE_6__ {int active_delay_ns; TYPE_1__ context; } ;
typedef  TYPE_2__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,struct calldata*) ; 

void FUNC4(obs_output_t *output, const char *signal)
{
	struct calldata params;
	uint8_t stack[128];

	FUNC0(&params, stack, sizeof(stack));
	FUNC2(&params, "output", output);
	FUNC1(&params, "sec", output->active_delay_ns / 1000000000);
	FUNC3(output->context.signals, signal, &params);
}