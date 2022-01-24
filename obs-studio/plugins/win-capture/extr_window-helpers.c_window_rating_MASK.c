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
struct dstr {int /*<<< orphan*/  member_0; } ;
typedef  enum window_priority { ____Placeholder_window_priority } window_priority ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int WINDOW_PRIORITY_CLASS ; 
 int WINDOW_PRIORITY_EXE ; 
 int WINDOW_PRIORITY_TITLE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(HWND window, enum window_priority priority,
			 const char *class, const char *title, const char *exe,
			 bool uwp_window)
{
	struct dstr cur_class = {0};
	struct dstr cur_title = {0};
	struct dstr cur_exe = {0};
	int val = 0x7FFFFFFF;

	if (!FUNC4(&cur_exe, window))
		return 0x7FFFFFFF;
	FUNC5(&cur_title, window);
	FUNC3(&cur_class, window);

	bool class_matches = FUNC1(&cur_class, class) == 0;
	bool exe_matches = FUNC1(&cur_exe, exe) == 0;
	int title_val = FUNC0(FUNC1(&cur_title, title));

	/* always match by name with UWP windows */
	if (uwp_window) {
		if (priority == WINDOW_PRIORITY_EXE && !exe_matches)
			val = 0x7FFFFFFF;
		else
			val = title_val == 0 ? 0 : 0x7FFFFFFF;

	} else if (priority == WINDOW_PRIORITY_CLASS) {
		val = class_matches ? title_val : 0x7FFFFFFF;
		if (val != 0x7FFFFFFF && !exe_matches)
			val += 0x1000;

	} else if (priority == WINDOW_PRIORITY_TITLE) {
		val = title_val == 0 ? 0 : 0x7FFFFFFF;

	} else if (priority == WINDOW_PRIORITY_EXE) {
		val = exe_matches ? title_val : 0x7FFFFFFF;
	}

	FUNC2(&cur_class);
	FUNC2(&cur_title);
	FUNC2(&cur_exe);

	return val;
}