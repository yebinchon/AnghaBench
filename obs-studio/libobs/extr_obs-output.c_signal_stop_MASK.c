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
struct TYPE_2__ {int /*<<< orphan*/  signals; } ;
struct obs_output {TYPE_1__ context; int /*<<< orphan*/  stop_code; int /*<<< orphan*/  last_error_message; } ;
struct calldata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct calldata*) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct calldata*,char*,struct obs_output*) ; 
 int /*<<< orphan*/  FUNC4 (struct calldata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

__attribute__((used)) static inline void FUNC6(struct obs_output *output)
{
	struct calldata params;

	FUNC1(&params);
	FUNC4(&params, "last_error", output->last_error_message);
	FUNC2(&params, "code", output->stop_code);
	FUNC3(&params, "output", output);

	FUNC5(output->context.signals, "stop", &params);

	FUNC0(&params);
}