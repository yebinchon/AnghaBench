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
struct dirent {scalar_t__ d_type; int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_FILES ; 
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_LNK ; 
 int O_DIRECTORY ; 
 int O_PATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 unsigned int FUNC5 (char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC11 (int /*<<< orphan*/ ,char**) ; 

int FUNC12(void)
{
	struct dirent *de;
	unsigned int fd, target_fd;

	if (FUNC9(CLONE_FILES) == -1)
		return 1;

	/* Wipe fdtable. */
	do {
		DIR *d;

		d = FUNC6("/proc/self/fd");
		if (!d)
			return 1;

		de = FUNC10(d);
		FUNC0(de->d_type == DT_DIR);
		FUNC0(FUNC7(de->d_name, "."));

		de = FUNC10(d);
		FUNC0(de->d_type == DT_DIR);
		FUNC0(FUNC7(de->d_name, ".."));
next:
		de = FUNC10(d);
		if (de) {
			unsigned long long fd_ull;
			unsigned int fd;
			char *end;

			FUNC0(de->d_type == DT_LNK);

			fd_ull = FUNC11(de->d_name, &end);
			FUNC0(*end == '\0');
			FUNC0(fd_ull == (unsigned int)fd_ull);

			fd = fd_ull;
			if (fd == FUNC3(d))
				goto next;
			FUNC1(fd);
		}

		FUNC2(d);
	} while (de);

	/* Now fdtable is clean. */

	fd = FUNC5("/", O_PATH|O_DIRECTORY);
	FUNC0(fd == 0);
	FUNC8(fd);
	FUNC1(fd);

	/* Clean again! */

	fd = FUNC5("/", O_PATH|O_DIRECTORY);
	FUNC0(fd == 0);
	/* Default RLIMIT_NOFILE-1 */
	target_fd = 1023;
	while (target_fd > 0) {
		if (FUNC4(fd, target_fd) == target_fd)
			break;
		target_fd /= 2;
	}
	FUNC0(target_fd > 0);
	FUNC1(fd);
	FUNC8(target_fd);
	FUNC1(target_fd);

	return 0;
}