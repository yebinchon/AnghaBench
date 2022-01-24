#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct game_capture {int /*<<< orphan*/  injector_process; int /*<<< orphan*/  process_id; int /*<<< orphan*/  thread_id; } ;
typedef  int /*<<< orphan*/  si ;
struct TYPE_6__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int cb; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ STARTUPINFO ;
typedef  TYPE_2__ PROCESS_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_NO_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC10(struct game_capture *gc,
					 const char *inject_path,
					 const char *hook_dll)
{
	wchar_t *command_line_w = FUNC5(4096 * sizeof(wchar_t));
	wchar_t *inject_path_w;
	wchar_t *hook_dll_w;
	bool anti_cheat = FUNC8(gc);
	PROCESS_INFORMATION pi = {0};
	STARTUPINFO si = {0};
	bool success = false;

	FUNC6(inject_path, 0, &inject_path_w);
	FUNC6(hook_dll, 0, &hook_dll_w);

	si.cb = sizeof(si);

	FUNC7(command_line_w, 4096, L"\"%s\" \"%s\" %lu %lu", inject_path_w,
		 hook_dll_w, (unsigned long)anti_cheat,
		 anti_cheat ? gc->thread_id : gc->process_id);

	success = !!FUNC1(inject_path_w, command_line_w, NULL, NULL,
				   false, CREATE_NO_WINDOW, NULL, NULL, &si,
				   &pi);
	if (success) {
		FUNC0(pi.hThread);
		gc->injector_process = pi.hProcess;
	} else {
		FUNC9("Failed to create inject helper process: %lu",
		     FUNC2());
	}

	FUNC4(command_line_w);
	FUNC3(inject_path_w);
	FUNC3(hook_dll_w);
	return success;
}