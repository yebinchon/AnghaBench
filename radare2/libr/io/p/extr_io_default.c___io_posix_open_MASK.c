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
 int const O_BINARY ; 
 int const O_CREAT ; 
 int const O_RDONLY ; 
 int const O_RDWR ; 
 int R_PERM_CREAT ; 
 int R_PERM_W ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,int const,int) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(const char *file, int perm, int mode) {
	int fd;
	if (FUNC3 (file, "file://")) {
		file += FUNC4 ("file://");
	}
	if (FUNC0 (file)) {
		return -1;
	}
#if __WINDOWS__
	// probably unnecessary to have this ifdef nowadays windows is posix enough
	if (perm & R_PERM_W) {
		fd = r_sandbox_open (file, O_RDWR, 0);
		if (fd == -1 && (perm & R_PERM_CREAT)) {
			r_sandbox_creat (file, 0644);
			fd = r_sandbox_open (file, O_RDWR | O_CREAT, 0);
		}
	} else {
		fd = r_sandbox_open (file, O_RDONLY | O_BINARY, 0);
	}
#else
	const int posixFlags = (perm & R_PERM_W) ? (perm & R_PERM_CREAT)
			? (O_RDWR | O_CREAT) : O_RDWR : O_RDONLY;
	fd = FUNC2 (file, posixFlags, mode);
#endif
	return fd;
}