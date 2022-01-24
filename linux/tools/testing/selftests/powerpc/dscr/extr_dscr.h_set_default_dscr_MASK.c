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
 int /*<<< orphan*/  DSCR_DEFAULT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char*,int /*<<< orphan*/ ) ; 

void FUNC7(unsigned long val)
{
	int fd = -1, ret;
	char buf[16];

	if (fd == -1) {
		fd = FUNC2(DSCR_DEFAULT, O_RDWR);
		if (fd == -1) {
			FUNC3("open() failed");
			FUNC1(1);
		}
	}
	FUNC4(buf, "%lx\n", val);
	ret = FUNC6(fd, buf, FUNC5(buf));
	if (ret == -1) {
		FUNC3("write() failed");
		FUNC1(1);
	}
	FUNC0(fd);
}