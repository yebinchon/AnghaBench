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
 int O_CREAT ; 
 int O_RDWR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int,...) ; 

__attribute__((used)) static int FUNC7(const char *f, int x) {
	int fd = FUNC6 (f, O_RDWR | O_CREAT, 0644);
	if (fd == -1) {
		fd = FUNC6 (f, O_RDWR);
		if (fd == -1) {
			return -1;
		}
	}
#if __UNIX__
	if (x) {
		fchmod (fd, 0755);
	}
#endif
#if _MSC_VER
	int r = _chsize (fd, 0);
#else
	int r = FUNC5 (fd, 0);
#endif
	if (r != 0) {
		FUNC3 ("Could not resize\n");
	}
	FUNC1 (1);
	FUNC2 (fd, 1);
	return fd;
}