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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(DIR *d, const char *filename)
{
	char buf[4096];
	int fd;
	ssize_t rv;

	/* read from /proc/kmsg can block */
	fd = FUNC3(FUNC2(d), filename, O_RDONLY|O_NONBLOCK);
	if (fd == -1)
		return;
	rv = FUNC4(fd, buf, sizeof(buf));
	FUNC0((0 <= rv && rv <= sizeof(buf)) || rv == -1);
	FUNC1(fd);
}