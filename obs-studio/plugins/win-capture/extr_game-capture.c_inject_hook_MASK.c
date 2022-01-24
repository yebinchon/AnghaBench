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
struct game_capture {int process_is_64bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct game_capture*,char*,char*) ; 
 int FUNC2 (struct game_capture*,char*,char const*) ; 
 int FUNC3 (struct game_capture*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (struct game_capture*) ; 

__attribute__((used)) static inline bool FUNC7(struct game_capture *gc)
{
	bool matching_architecture;
	bool success = false;
	const char *hook_dll;
	char *inject_path;
	char *hook_path;

	if (gc->process_is_64bit) {
		hook_dll = "graphics-hook64.dll";
		inject_path = FUNC5("inject-helper64.exe");
	} else {
		hook_dll = "graphics-hook32.dll";
		inject_path = FUNC5("inject-helper32.exe");
	}

	hook_path = FUNC5(hook_dll);

	if (!FUNC1(gc, inject_path, "inject helper")) {
		goto cleanup;
	}
	if (!FUNC1(gc, hook_path, "graphics hook")) {
		goto cleanup;
	}

#ifdef _WIN64
	matching_architecture = gc->process_is_64bit;
#else
	matching_architecture = !gc->process_is_64bit;
#endif

	if (matching_architecture && !FUNC6(gc)) {
		FUNC4("using direct hook");
		success = FUNC3(gc, hook_path);
	} else {
		FUNC4("using helper (%s hook)",
		     FUNC6(gc) ? "compatibility" : "direct");
		success = FUNC2(gc, inject_path, hook_dll);
	}

cleanup:
	FUNC0(inject_path);
	FUNC0(hook_path);
	return success;
}