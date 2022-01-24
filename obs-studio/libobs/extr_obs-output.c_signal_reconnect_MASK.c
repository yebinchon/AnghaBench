#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  signals; } ;
struct obs_output {TYPE_1__ context; int /*<<< orphan*/  reconnect_retry_cur_sec; } ;
struct calldata {int dummy; } ;
typedef  int /*<<< orphan*/  stack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,struct obs_output*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

__attribute__((used)) static inline void FUNC4(struct obs_output *output)
{
	struct calldata params;
	uint8_t stack[128];

	FUNC0(&params, stack, sizeof(stack));
	FUNC1(&params, "timeout_sec",
			 output->reconnect_retry_cur_sec);
	FUNC2(&params, "output", output);
	FUNC3(output->context.signals, "reconnect", &params);
}