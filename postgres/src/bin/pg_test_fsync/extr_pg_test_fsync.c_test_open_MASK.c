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
 scalar_t__ DEFAULT_XLOG_SEG_SIZE ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  filename ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  full_buf ; 
 int needs_unlink ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(void)
{
	int			tmpfile;

	/*
	 * test if we can open the target file
	 */
	if ((tmpfile = FUNC3(filename, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR)) == -1)
		FUNC1("could not open output file");
	needs_unlink = 1;
	if (FUNC4(tmpfile, full_buf, DEFAULT_XLOG_SEG_SIZE) !=
		DEFAULT_XLOG_SEG_SIZE)
		FUNC1("write failed");

	/* fsync now so that dirty buffers don't skew later tests */
	if (FUNC2(tmpfile) != 0)
		FUNC1("fsync failed");

	FUNC0(tmpfile);
}