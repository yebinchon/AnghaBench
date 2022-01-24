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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * ft2_lib ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int plugin_initialized ; 

__attribute__((used)) static void FUNC4(void)
{
	if (plugin_initialized)
		return;

	FUNC0(&ft2_lib);

	if (ft2_lib == NULL) {
		FUNC1(LOG_WARNING, "FT2-text: Failed to initialize FT2.");
		return;
	}

	if (!FUNC2())
		FUNC3();

	plugin_initialized = true;
}