#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  posbuf ;
typedef  int pgoff_t ;
typedef  int /*<<< orphan*/  lenbuf ;
struct TYPE_7__ {int tarFHpos; int /*<<< orphan*/  tarFH; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_9__ {scalar_t__ formatData; } ;
struct TYPE_8__ {int fileLen; int /*<<< orphan*/  targetFile; } ;
typedef  TYPE_2__ TAR_MEMBER ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 char* UINT64_FORMAT ; 
 int FUNC0 (TYPE_3__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(ArchiveHandle *AH, TAR_MEMBER *th)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	char		h[512];
	char		tag[100 + 1];
	int			sum,
				chk;
	pgoff_t		len;
	pgoff_t		hPos;
	bool		gotBlock = false;

	while (!gotBlock)
	{
		/* Save the pos for reporting purposes */
		hPos = ctx->tarFHpos;

		/* Read a 512 byte block, return EOF, exit if short */
		len = FUNC0(AH, h, 512, NULL, ctx->tarFH);
		if (len == 0)			/* EOF */
			return 0;

		if (len != 512)
			FUNC1(FUNC3("incomplete tar header found (%lu byte)",
						   "incomplete tar header found (%lu bytes)",
						   len),
				  (unsigned long) len);

		/* Calc checksum */
		chk = FUNC9(h);
		sum = FUNC6(&h[148], 8);

		/*
		 * If the checksum failed, see if it is a null block. If so, silently
		 * continue to the next block.
		 */
		if (chk == sum)
			gotBlock = true;
		else
		{
			int			i;

			for (i = 0; i < 512; i++)
			{
				if (h[i] != 0)
				{
					gotBlock = true;
					break;
				}
			}
		}
	}

	/* Name field is 100 bytes, might not be null-terminated */
	FUNC8(tag, &h[0], 100 + 1);

	len = FUNC6(&h[124], 12);

	{
		char		posbuf[32];
		char		lenbuf[32];

		FUNC7(posbuf, sizeof(posbuf), UINT64_FORMAT, (uint64) hPos);
		FUNC7(lenbuf, sizeof(lenbuf), UINT64_FORMAT, (uint64) len);
		FUNC4("TOC Entry %s at %s (length %s, checksum %d)",
					 tag, posbuf, lenbuf, sum);
	}

	if (chk != sum)
	{
		char		posbuf[32];

		FUNC7(posbuf, sizeof(posbuf), UINT64_FORMAT,
				 (uint64) FUNC2(ctx->tarFH));
		FUNC1("corrupt tar header found in %s (expected %d, computed %d) file position %s",
			  tag, sum, chk, posbuf);
	}

	th->targetFile = FUNC5(tag);
	th->fileLen = len;

	return 1;
}