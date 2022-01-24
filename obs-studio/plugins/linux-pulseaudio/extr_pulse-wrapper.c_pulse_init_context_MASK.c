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
typedef  int /*<<< orphan*/  pa_proplist ;

/* Variables and functions */
 int /*<<< orphan*/  PA_CONTEXT_NOAUTOSPAWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pulse_context ; 
 int /*<<< orphan*/  pulse_context_state_changed ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pulse_mainloop ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8()
{
	FUNC5();

	pa_proplist *p = FUNC6();
	pulse_context = FUNC1(
		FUNC4(pulse_mainloop), "OBS", p);

	FUNC2(pulse_context,
				      pulse_context_state_changed, NULL);

	FUNC0(pulse_context, NULL, PA_CONTEXT_NOAUTOSPAWN, NULL);
	FUNC3(p);

	FUNC7();
}