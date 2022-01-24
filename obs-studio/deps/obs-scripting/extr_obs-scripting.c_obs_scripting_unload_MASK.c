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
struct script_callback {struct script_callback* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int defer_call_exit ; 
 int /*<<< orphan*/  defer_call_mutex ; 
 int /*<<< orphan*/  defer_call_queue ; 
 int /*<<< orphan*/  defer_call_semaphore ; 
 int /*<<< orphan*/  defer_call_thread ; 
 int /*<<< orphan*/  detach_mutex ; 
 struct script_callback* detached_callbacks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_filter ; 
 int /*<<< orphan*/  FUNC3 (struct script_callback*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int scripting_loaded ; 

void FUNC12(void)
{
	if (!scripting_loaded)
		return;

		/* ---------------------- */

#if COMPILE_LUA
	obs_lua_unload();
#endif

#if COMPILE_PYTHON
	obs_python_unload();
#endif

	FUNC2(&file_filter);

	/* ---------------------- */

	int total_detached = 0;

	FUNC10(&detach_mutex);

	struct script_callback *cur = detached_callbacks;
	while (cur) {
		struct script_callback *next = cur->next;
		FUNC3(cur);
		cur = next;

		++total_detached;
	}

	FUNC11(&detach_mutex);
	FUNC9(&detach_mutex);

	FUNC0(LOG_INFO, "[Scripting] Total detached callbacks: %d",
	     total_detached);

	/* ---------------------- */

	FUNC10(&defer_call_mutex);

	/* TODO */

	defer_call_exit = true;
	FUNC1(&defer_call_queue);

	FUNC11(&defer_call_mutex);

	FUNC7(defer_call_semaphore);
	FUNC8(defer_call_thread, NULL);

	FUNC9(&defer_call_mutex);
	FUNC6(defer_call_semaphore);

	scripting_loaded = false;
}