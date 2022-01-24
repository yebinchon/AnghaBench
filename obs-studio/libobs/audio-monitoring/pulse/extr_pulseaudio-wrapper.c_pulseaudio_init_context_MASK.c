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
 int /*<<< orphan*/  pulseaudio_context ; 
 int /*<<< orphan*/  pulseaudio_context_state_changed ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pulseaudio_mainloop ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8()
{
	FUNC5();

	pa_proplist *p = FUNC6();
	pulseaudio_context = FUNC1(
		FUNC4(pulseaudio_mainloop),
		"OBS-Monitor", p);

	FUNC2(pulseaudio_context,
				      pulseaudio_context_state_changed, NULL);

	FUNC0(pulseaudio_context, NULL, PA_CONTEXT_NOAUTOSPAWN,
			   NULL);
	FUNC3(p);

	FUNC7();
}