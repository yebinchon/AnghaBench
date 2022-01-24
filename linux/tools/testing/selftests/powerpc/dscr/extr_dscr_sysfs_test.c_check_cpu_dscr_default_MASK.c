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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long) ; 
 int FUNC4 (int,char*,int) ; 
 unsigned long FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(char *file, unsigned long val)
{
	char buf[10];
	int fd, rc;

	fd = FUNC1(file, O_RDWR);
	if (fd == -1) {
		FUNC2("open() failed");
		return 1;
	}

	rc = FUNC4(fd, buf, sizeof(buf));
	if (rc == -1) {
		FUNC2("read() failed");
		return 1;
	}
	FUNC0(fd);

	buf[rc] = '\0';
	if (FUNC5(buf, NULL, 16) != val) {
		FUNC3("DSCR match failed: %ld (system) %ld (cpu)\n",
					val, FUNC5(buf, NULL, 16));
		return 1;
	}
	return 0;
}