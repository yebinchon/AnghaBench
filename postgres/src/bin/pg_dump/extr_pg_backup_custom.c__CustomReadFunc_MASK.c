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
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t) ; 

__attribute__((used)) static size_t
FUNC4(ArchiveHandle *AH, char **buf, size_t *buflen)
{
	size_t		blkLen;

	/* Read length */
	blkLen = FUNC0(AH);
	if (blkLen == 0)
		return 0;

	/* If the caller's buffer is not large enough, allocate a bigger one */
	if (blkLen > *buflen)
	{
		FUNC2(*buf);
		*buf = (char *) FUNC3(blkLen);
		*buflen = blkLen;
	}

	/* exits app on read errors */
	FUNC1(AH, *buf, blkLen);

	return blkLen;
}