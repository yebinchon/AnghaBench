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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int errno ; 
 int FUNC3 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  read_stats ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,int) ; 

__attribute__((used)) static int FUNC5(int fd, unsigned char *buf, int buf_sz)
{
	int ret, bytes_read = 0;
	long start, end, elapsed_time = 0;

	do {
		FUNC2(start);
		ret = FUNC3(fd, buf + bytes_read, buf_sz - bytes_read);
		FUNC2(end);
		if (ret < 0)
			return -errno;

		elapsed_time += end - start;
		FUNC4(&read_stats, elapsed_time, buf_sz);
		bytes_read += ret;

	} while (bytes_read < buf_sz);

	FUNC1("\tread elapsed timed = %ld\n", elapsed_time);
	FUNC0("\tRead  %d bytes\n", bytes_read);

	return bytes_read;
}