#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int stop_code; int /*<<< orphan*/  delay_active; int /*<<< orphan*/  delay_restart_refs; } ;
typedef  TYPE_1__ obs_output_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(obs_output_t *output, int code)
{
	if (!FUNC4(output, "obs_output_signal_stop"))
		return;

	output->stop_code = code;

	if (FUNC0(output, code)) {
		if (FUNC1(output))
			FUNC5(&output->delay_restart_refs);
		FUNC3(output, false);
		FUNC7(output);
	} else {
		if (FUNC1(output))
			FUNC6(&output->delay_active, false);
		FUNC2(output);
	}
}