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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pulse_context ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * pulse_mainloop ; 
 int /*<<< orphan*/  pulse_mutex ; 
 scalar_t__ pulse_refs ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8()
{
	FUNC4(&pulse_mutex);

	if (--pulse_refs == 0) {
		FUNC6();
		if (pulse_context != NULL) {
			FUNC0(pulse_context);
			FUNC1(pulse_context);
			pulse_context = NULL;
		}
		FUNC7();

		if (pulse_mainloop != NULL) {
			FUNC3(pulse_mainloop);
			FUNC2(pulse_mainloop);
			pulse_mainloop = NULL;
		}
	}

	FUNC5(&pulse_mutex);
}