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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char*,size_t) ; 

int FUNC6(int pid, char *prop, char *out, size_t len) {
	int fd, ret = -1;
	ssize_t nr;

	char *filename = FUNC3 ("/proc/%d/%s", pid, prop);
	if (!filename) {
		return -1;
	}
	fd = FUNC2 (filename, O_RDONLY, 0);
	if (fd == -1) {
		FUNC1 (filename);
		return -1;
	}
	nr = FUNC5 (fd, out, len);
	out[len - 1] = 0;
	if (nr > 0) {
		out[nr - 1] = '\0';  /* terminate at newline */
		ret = 0;
	} else if (nr < 0) {
		FUNC4 ("read");
	}
	FUNC0 (fd);
	FUNC1 (filename);
	return ret;
}