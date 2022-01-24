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
 int /*<<< orphan*/  FUNC0 (char*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC4 (int,unsigned char const* const,int,unsigned long) ; 
 int /*<<< orphan*/  pwrite_stats ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,long,int) ; 

__attribute__((used)) static int FUNC7(int fd, const unsigned char * const buf,
		      int buf_sz, unsigned long offset)
{
	int ret, bytes_written = 0;
	unsigned long cur_offset;
	long start, end, elapsed_time = 0;

	cur_offset = offset;

	do {
		FUNC2(start);
		ret = FUNC4(fd, buf + bytes_written,
			     buf_sz - bytes_written, cur_offset);
		FUNC2(end);
		if (ret < 0) {
			FUNC3(stderr, "pwrite(): error %d: %s\n",
				errno, FUNC5(errno));
			return -errno;
		}

		elapsed_time += (end - start);
		FUNC6(&pwrite_stats, elapsed_time, buf_sz);
		bytes_written += ret;
		cur_offset += ret;

	} while (bytes_written < buf_sz);

	FUNC1("\tpwrite elapsed timed = %ld\n", elapsed_time);
	FUNC0("\tWrote %d of %d bytes starting at address 0x%lx\n",
		       bytes_written, buf_sz, offset);

	return bytes_written;
}