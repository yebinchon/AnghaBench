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
 int /*<<< orphan*/  DSCR_DEFAULT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned long*) ; 

unsigned long FUNC8(void)
{
	int fd = -1, ret;
	char buf[16];
	unsigned long val;

	if (fd == -1) {
		fd = FUNC4(DSCR_DEFAULT, O_RDONLY);
		if (fd == -1) {
			FUNC5("open() failed");
			FUNC1(1);
		}
	}
	FUNC3(buf, 0, sizeof(buf));
	FUNC2(fd, 0, SEEK_SET);
	ret = FUNC6(fd, buf, sizeof(buf));
	if (ret == -1) {
		FUNC5("read() failed");
		FUNC1(1);
	}
	FUNC7(buf, "%lx", &val);
	FUNC0(fd);
	return val;
}