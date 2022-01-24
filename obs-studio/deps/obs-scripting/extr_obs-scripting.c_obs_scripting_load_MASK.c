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
 int /*<<< orphan*/  defer_call_mutex ; 
 int /*<<< orphan*/  defer_call_queue ; 
 int /*<<< orphan*/  defer_call_semaphore ; 
 int /*<<< orphan*/  defer_call_thread ; 
 int /*<<< orphan*/  defer_thread ; 
 int /*<<< orphan*/  detach_mutex ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int scripting_loaded ; 

bool FUNC9(void)
{
	FUNC0(&defer_call_queue);

	if (FUNC8(&detach_mutex, NULL) != 0) {
		return false;
	}
	if (FUNC8(&defer_call_mutex, NULL) != 0) {
		FUNC7(&detach_mutex);
		return false;
	}
	if (FUNC5(&defer_call_semaphore, 0) != 0) {
		FUNC7(&defer_call_mutex);
		FUNC7(&detach_mutex);
		return false;
	}

	if (FUNC6(&defer_call_thread, NULL, defer_thread, NULL) != 0) {
		FUNC4(defer_call_semaphore);
		FUNC7(&defer_call_mutex);
		FUNC7(&detach_mutex);
		return false;
	}

#if COMPILE_LUA
	obs_lua_load();
#endif

#if COMPILE_PYTHON
	obs_python_load();
#ifndef _WIN32 /* don't risk python startup load issues on windows */
	obs_scripting_load_python(NULL);
#endif
#endif

	scripting_loaded = true;
	return true;
}