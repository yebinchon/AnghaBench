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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(int *argc, char ***argv) {
	/* Compilation will often trigger fatal errors.
	 * Use tracked allocation mode to avoid leaks in that case. */
	FUNC1("USE_TRACKED_ALLOC=1");

	FUNC0();

	/* fuzzer_shutdown_php(); */
	return 0;
}