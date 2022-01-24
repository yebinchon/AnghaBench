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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  MAXPGPATH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(char *ret_path, const char *target_path,
				   const char *bin_path, const char *my_exec_path)
{
	int			prefix_len;
	int			tail_start;
	int			tail_len;
	int			i;

	/*
	 * Determine the common prefix --- note we require it to end on a
	 * directory separator, consider eg '/usr/lib' and '/usr/libexec'.
	 */
	prefix_len = 0;
	for (i = 0; target_path[i] && bin_path[i]; i++)
	{
		if (FUNC0(target_path[i]) && FUNC0(bin_path[i]))
			prefix_len = i + 1;
		else if (target_path[i] != bin_path[i])
			break;
	}
	if (prefix_len == 0)
		goto no_match;			/* no common prefix? */
	tail_len = FUNC5(bin_path) - prefix_len;

	/*
	 * Set up my_exec_path without the actual executable name, and
	 * canonicalize to simplify comparison to bin_path.
	 */
	FUNC4(ret_path, my_exec_path, MAXPGPATH);
	FUNC6(ret_path);	/* remove my executable name */
	FUNC1(ret_path);

	/*
	 * Tail match?
	 */
	tail_start = (int) FUNC5(ret_path) - tail_len;
	if (tail_start > 0 &&
		FUNC0(ret_path[tail_start - 1]) &&
		FUNC2(ret_path + tail_start, bin_path + prefix_len) == 0)
	{
		ret_path[tail_start] = '\0';
		FUNC7(ret_path);
		FUNC3(ret_path, ret_path, target_path + prefix_len);
		FUNC1(ret_path);
		return;
	}

no_match:
	FUNC4(ret_path, target_path, MAXPGPATH);
	FUNC1(ret_path);
}