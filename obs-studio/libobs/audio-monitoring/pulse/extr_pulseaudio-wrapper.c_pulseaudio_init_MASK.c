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
typedef  int /*<<< orphan*/  int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  pulseaudio_mainloop ; 
 int /*<<< orphan*/  pulseaudio_mutex ; 
 scalar_t__ pulseaudio_refs ; 

int_fast32_t FUNC5()
{
	FUNC2(&pulseaudio_mutex);

	if (pulseaudio_refs == 0) {
		pulseaudio_mainloop = FUNC0();
		FUNC1(pulseaudio_mainloop);

		FUNC4();
	}

	pulseaudio_refs++;

	FUNC3(&pulseaudio_mutex);

	return 0;
}