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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct stat*) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

int FUNC4(void)
{
	int fd0, fd1, fd2;
	struct stat st0, st1, st2;
	char buf[64];
	int rv;

	fd0 = FUNC2("/", O_DIRECTORY|O_RDONLY);
	FUNC0(fd0 >= 0);

	FUNC3(buf, sizeof(buf), "/proc/self/fd/%u", fd0);
	fd1 = FUNC2(buf, O_RDONLY);
	FUNC0(fd1 >= 0);

	FUNC3(buf, sizeof(buf), "/proc/thread-self/fd/%u", fd0);
	fd2 = FUNC2(buf, O_RDONLY);
	FUNC0(fd2 >= 0);

	rv = FUNC1(fd0, &st0);
	FUNC0(rv == 0);
	rv = FUNC1(fd1, &st1);
	FUNC0(rv == 0);
	rv = FUNC1(fd2, &st2);
	FUNC0(rv == 0);

	FUNC0(st0.st_dev == st1.st_dev);
	FUNC0(st0.st_ino == st1.st_ino);

	FUNC0(st0.st_dev == st2.st_dev);
	FUNC0(st0.st_ino == st2.st_ino);

	return 0;
}