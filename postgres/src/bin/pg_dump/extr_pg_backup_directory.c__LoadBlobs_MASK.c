#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* directory; int /*<<< orphan*/ * blobsTocFH; } ;
typedef  TYPE_3__ lclContext ;
struct TYPE_13__ {TYPE_1__* ropt; } ;
struct TYPE_15__ {TYPE_2__ public; scalar_t__ formatData; } ;
struct TYPE_12__ {int /*<<< orphan*/  dropSchema; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_BINARY_R ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 int FUNC12 (char*,char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC13(ArchiveHandle *AH)
{
	Oid			oid;
	lclContext *ctx = (lclContext *) AH->formatData;
	char		fname[MAXPGPATH];
	char		line[MAXPGPATH];

	FUNC3(AH);

	FUNC10(AH, fname, "blobs.toc");

	ctx->blobsTocFH = FUNC8(fname, PG_BINARY_R);

	if (ctx->blobsTocFH == NULL)
		FUNC9("could not open large object TOC file \"%s\" for input: %m",
			  fname);

	/* Read the blobs TOC file line-by-line, and process each blob */
	while ((FUNC7(ctx->blobsTocFH, line, MAXPGPATH)) != NULL)
	{
		char		fname[MAXPGPATH];
		char		path[MAXPGPATH];

		/* Can't overflow because line and fname are the same length. */
		if (FUNC12(line, "%u %s\n", &oid, fname) != 2)
			FUNC9("invalid line in large object TOC file \"%s\": \"%s\"",
				  fname, line);

		FUNC2(AH, oid, AH->public.ropt->dropSchema);
		FUNC11(path, MAXPGPATH, "%s/%s", ctx->directory, fname);
		FUNC4(AH, path);
		FUNC0(AH, oid);
	}
	if (!FUNC6(ctx->blobsTocFH))
		FUNC9("error reading large object TOC file \"%s\"",
			  fname);

	if (FUNC5(ctx->blobsTocFH) != 0)
		FUNC9("could not close large object TOC file \"%s\": %m",
			  fname);

	ctx->blobsTocFH = NULL;

	FUNC1(AH);
}