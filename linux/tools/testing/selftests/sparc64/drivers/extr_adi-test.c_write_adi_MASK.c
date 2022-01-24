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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long,int) ; 
 int FUNC4 (int,unsigned char const* const,int) ; 
 int /*<<< orphan*/  write_stats ; 

__attribute__((used)) static int FUNC5(int fd, const unsigned char * const buf, int buf_sz)
{
	int ret, bytes_written = 0;
	long start, end, elapsed_time = 0;

	do {
		FUNC2(start);
		ret = FUNC4(fd, buf + bytes_written, buf_sz - bytes_written);
		FUNC2(end);
		if (ret < 0)
			return -errno;

		elapsed_time += (end - start);
		FUNC3(&write_stats, elapsed_time, buf_sz);
		bytes_written += ret;
	} while (bytes_written < buf_sz);

	FUNC1("\twrite elapsed timed = %ld\n", elapsed_time);
	FUNC0("\tWrote %d of %d bytes\n", bytes_written, buf_sz);

	return bytes_written;
}