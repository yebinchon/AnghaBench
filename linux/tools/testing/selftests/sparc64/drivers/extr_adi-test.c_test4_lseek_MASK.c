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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ EINVAL ; 
 int OFFSET_ADD ; 
 int OFFSET_SUBTRACT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int fd)
{
#define	OFFSET_ADD	(0x100)
#define OFFSET_SUBTRACT	(0xFFFFFFF000000000)

	off_t offset_out, offset_in;
	int ret;


	offset_in = 0x123456789abcdef0;
	offset_out = FUNC3(fd, offset_in, SEEK_SET);
	if (offset_out != offset_in) {
		ret = -1;
		FUNC2(ret);
	}

	/* seek to the current offset.  this should return EINVAL */
	offset_out = FUNC3(fd, offset_in, SEEK_SET);
	if (offset_out < 0 && errno == EINVAL)
		FUNC0(
			"\tSEEK_SET failed as designed. Not an error\n");
	else {
		ret = -2;
		FUNC2(ret);
	}

	offset_out = FUNC3(fd, 0, SEEK_CUR);
	if (offset_out != offset_in) {
		ret = -3;
		FUNC2(ret);
	}

	offset_out = FUNC3(fd, OFFSET_ADD, SEEK_CUR);
	if (offset_out != (offset_in + OFFSET_ADD)) {
		ret = -4;
		FUNC2(ret);
	}

	offset_out = FUNC3(fd, OFFSET_SUBTRACT, SEEK_CUR);
	if (offset_out != (offset_in + OFFSET_ADD + OFFSET_SUBTRACT)) {
		ret = -5;
		FUNC2(ret);
	}

	ret = 0;
out:
	FUNC1(ret);
}