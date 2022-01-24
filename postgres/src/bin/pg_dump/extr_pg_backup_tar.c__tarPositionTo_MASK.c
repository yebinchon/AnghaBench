#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ tarFHpos; scalar_t__ tarNextMember; int /*<<< orphan*/  tarFH; } ;
typedef  TYPE_1__ lclContext ;
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_14__ {scalar_t__ formatData; } ;
struct TYPE_13__ {char* targetFile; int fileLen; scalar_t__ pos; TYPE_3__* AH; } ;
typedef  TYPE_2__ TAR_MEMBER ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 char* INT64_FORMAT ; 
 int REQ_DATA ; 
 int FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 

__attribute__((used)) static TAR_MEMBER *
FUNC10(ArchiveHandle *AH, const char *filename)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	TAR_MEMBER *th = FUNC7(sizeof(TAR_MEMBER));
	char		c;
	char		header[512];
	size_t		i,
				len,
				blks;
	int			id;

	th->AH = AH;

	/* Go to end of current file, if any */
	if (ctx->tarFHpos != 0)
	{
		char		buf1[100],
					buf2[100];

		FUNC8(buf1, sizeof(buf1), INT64_FORMAT, (int64) ctx->tarFHpos);
		FUNC8(buf2, sizeof(buf2), INT64_FORMAT, (int64) ctx->tarNextMember);
		FUNC6("moving from position %s to next member at file position %s",
					 buf1, buf2);

		while (ctx->tarFHpos < ctx->tarNextMember)
			FUNC2(AH, &c, 1, NULL, ctx->tarFH);
	}

	{
		char		buf[100];

		FUNC8(buf, sizeof(buf), INT64_FORMAT, (int64) ctx->tarFHpos);
		FUNC6("now at file position %s", buf);
	}

	/* We are at the start of the file, or at the next member */

	/* Get the header */
	if (!FUNC1(AH, th))
	{
		if (filename)
			FUNC4("could not find header for file \"%s\" in tar archive", filename);
		else
		{
			/*
			 * We're just scanning the archive for the next file, so return
			 * null
			 */
			FUNC5(th);
			return NULL;
		}
	}

	while (filename != NULL && FUNC9(th->targetFile, filename) != 0)
	{
		FUNC6("skipping tar member %s", th->targetFile);

		id = FUNC3(th->targetFile);
		if ((FUNC0(AH, id) & REQ_DATA) != 0)
			FUNC4("restoring data out of order is not supported in this archive format: "
				  "\"%s\" is required, but comes before \"%s\" in the archive file.",
				  th->targetFile, filename);

		/* Header doesn't match, so read to next header */
		len = ((th->fileLen + 511) & ~511); /* Padded length */
		blks = len >> 9;		/* # of 512 byte blocks */

		for (i = 0; i < blks; i++)
			FUNC2(AH, &header[0], 512, NULL, ctx->tarFH);

		if (!FUNC1(AH, th))
			FUNC4("could not find header for file \"%s\" in tar archive", filename);
	}

	ctx->tarNextMember = ctx->tarFHpos + ((th->fileLen + 511) & ~511);
	th->pos = 0;

	return th;
}