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
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,long) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int errno ; 
 int FUNC4 (int,unsigned char*,int,unsigned long) ; 
 int /*<<< orphan*/  pread_stats ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long,int) ; 

__attribute__((used)) static int FUNC6(int fd, unsigned char *buf,
		     int buf_sz, unsigned long offset)
{
	int ret, i, bytes_read = 0;
	unsigned long cur_offset;
	long start, end, elapsed_time = 0;

	cur_offset = offset;
	do {
		FUNC3(start);
		ret = FUNC4(fd, buf + bytes_read, buf_sz - bytes_read,
			    cur_offset);
		FUNC3(end);
		if (ret < 0)
			return -errno;

		elapsed_time += end - start;
		FUNC5(&pread_stats, elapsed_time, buf_sz);
		bytes_read += ret;
		cur_offset += ret;

	} while (bytes_read < buf_sz);

	FUNC2("\tpread elapsed timed = %ld\n", elapsed_time);
	FUNC0("\tRead  %d bytes starting at offset 0x%lx\n",
		       bytes_read, offset);
	for (i = 0; i < bytes_read; i++)
		FUNC1("\t\t0x%lx\t%d\n", offset + i, buf[i]);

	return bytes_read;
}