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
struct stat {int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  opt_cgroup ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 

__attribute__((used)) static void FUNC4(const char *path)
{
	if (path[0] == '@') {
		opt_cgroup = FUNC2(path + 1);
		return;
	}

	struct stat st;

	if (FUNC3(path, &st))
		FUNC1("stat failed: %s: %m\n", path);

	if (!FUNC0(st.st_mode))
		FUNC1("cgroup supposed to be a directory: %s\n", path);

	opt_cgroup = st.st_ino;
}