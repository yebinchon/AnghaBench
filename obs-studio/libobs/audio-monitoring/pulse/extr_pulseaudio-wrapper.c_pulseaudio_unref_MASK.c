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
 int /*<<< orphan*/ * pulseaudio_context ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * pulseaudio_mainloop ; 
 int /*<<< orphan*/  pulseaudio_mutex ; 
 scalar_t__ pulseaudio_refs ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8()
{
	FUNC4(&pulseaudio_mutex);

	if (--pulseaudio_refs == 0) {
		FUNC6();
		if (pulseaudio_context != NULL) {
			FUNC0(pulseaudio_context);
			FUNC1(pulseaudio_context);
			pulseaudio_context = NULL;
		}
		FUNC7();

		if (pulseaudio_mainloop != NULL) {
			FUNC3(pulseaudio_mainloop);
			FUNC2(pulseaudio_mainloop);
			pulseaudio_mainloop = NULL;
		}
	}

	FUNC5(&pulseaudio_mutex);
}