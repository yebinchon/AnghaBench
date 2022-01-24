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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int,char const*,size_t) ; 

__attribute__((used)) static void FUNC5(DIR *d, const char *filename, const char *buf, size_t len)
{
	int fd;
	ssize_t rv;

	fd = FUNC3(FUNC2(d), filename, O_WRONLY);
	if (fd == -1)
		return;
	rv = FUNC4(fd, buf, len);
	FUNC0((0 <= rv && rv <= len) || rv == -1);
	FUNC1(fd);
}