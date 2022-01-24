#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t filePos; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_6__ {int /*<<< orphan*/  FH; scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (size_t) ; 

__attribute__((used)) static void
FUNC6(ArchiveHandle *AH)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	size_t		blkLen;
	char	   *buf = NULL;
	int			buflen = 0;
	size_t		cnt;

	blkLen = FUNC0(AH);
	while (blkLen != 0)
	{
		if (blkLen > buflen)
		{
			if (buf)
				FUNC4(buf);
			buf = (char *) FUNC5(blkLen);
			buflen = blkLen;
		}
		if ((cnt = FUNC3(buf, 1, blkLen, AH->FH)) != blkLen)
		{
			if (FUNC2(AH->FH))
				FUNC1("could not read from input file: end of file");
			else
				FUNC1("could not read from input file: %m");
		}

		ctx->filePos += blkLen;

		blkLen = FUNC0(AH);
	}

	if (buf)
		FUNC4(buf);
}