#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_2__ {int /*<<< orphan*/  executable; } ;
struct game_capture {TYPE_1__ config; int /*<<< orphan*/  process_id; } ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  PROCESS_ALL_ACCESS ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static inline bool FUNC8(struct game_capture *gc,
			       const char *hook_path_rel)
{
	wchar_t hook_path_abs_w[MAX_PATH];
	wchar_t *hook_path_rel_w;
	wchar_t *path_ret;
	HANDLE process;
	int ret;

	FUNC6(hook_path_rel, 0, &hook_path_rel_w);
	if (!hook_path_rel_w) {
		FUNC7("hook_direct: could not convert string");
		return false;
	}

	path_ret = FUNC2(hook_path_abs_w, hook_path_rel_w, MAX_PATH);
	FUNC3(hook_path_rel_w);

	if (path_ret == NULL) {
		FUNC7("hook_direct: could not make absolute path");
		return false;
	}

	process = FUNC5(PROCESS_ALL_ACCESS, false, gc->process_id);
	if (!process) {
		FUNC7("hook_direct: could not open process: %s (%lu)",
		     gc->config.executable, FUNC1());
		return false;
	}

	ret = FUNC4(process, hook_path_abs_w);
	FUNC0(process);

	if (ret != 0) {
		FUNC7("hook_direct: inject failed: %d", ret);
		return false;
	}

	return true;
}