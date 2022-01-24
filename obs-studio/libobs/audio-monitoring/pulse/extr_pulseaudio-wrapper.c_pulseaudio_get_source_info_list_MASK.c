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
typedef  int /*<<< orphan*/  pa_source_info_cb_t ;
typedef  int /*<<< orphan*/  pa_operation ;
typedef  int int_fast32_t ;

/* Variables and functions */
 scalar_t__ PA_OPERATION_RUNNING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pulseaudio_context ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int_fast32_t FUNC7(pa_source_info_cb_t cb,
					     void *userdata)
{
	if (FUNC3() < 0)
		return -1;

	FUNC4();

	pa_operation *op = FUNC0(pulseaudio_context,
							   cb, userdata);
	if (!op) {
		FUNC5();
		return -1;
	}
	while (FUNC1(op) == PA_OPERATION_RUNNING)
		FUNC6();
	FUNC2(op);

	FUNC5();

	return 0;
}