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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int SEEK_END ; 
 scalar_t__ FUNC3 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  seek_stats ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static off_t FUNC5(int fd, off_t offset, int whence)
{
	long start, end;
	off_t ret;

	FUNC2(start);
	ret = FUNC3(fd, offset, whence);
	FUNC2(end);
	FUNC0("\tlseek ret = 0x%llx\n", ret);
	if (ret < 0)
		goto out;

	FUNC1("\tlseek elapsed timed = %ld\n", end - start);
	FUNC4(&seek_stats, end - start, 0);

out:
	(void)FUNC3(fd, 0, SEEK_END);
	return ret;
}