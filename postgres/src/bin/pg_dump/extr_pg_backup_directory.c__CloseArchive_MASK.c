#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  directory; int /*<<< orphan*/  pstate; int /*<<< orphan*/ * dataFH; } ;
typedef  TYPE_1__ lclContext ;
typedef  int /*<<< orphan*/  cfp ;
struct TYPE_11__ {scalar_t__ mode; int /*<<< orphan*/ * FH; scalar_t__ dosync; int /*<<< orphan*/  format; scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_BINARY_W ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  archDirectory ; 
 scalar_t__ archModeWrite ; 
 int /*<<< orphan*/  archTar ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,char*) ; 

__attribute__((used)) static void
FUNC10(ArchiveHandle *AH)
{
	lclContext *ctx = (lclContext *) AH->formatData;

	if (AH->mode == archModeWrite)
	{
		cfp		   *tocFH;
		char		fname[MAXPGPATH];

		FUNC9(AH, fname, "toc.dat");

		/* this will actually fork the processes for a parallel backup */
		ctx->pstate = FUNC1(AH);

		/* The TOC is always created uncompressed */
		tocFH = FUNC6(fname, PG_BINARY_W, 0);
		if (tocFH == NULL)
			FUNC7("could not open output file \"%s\": %m", fname);
		ctx->dataFH = tocFH;

		/*
		 * Write 'tar' in the format field of the toc.dat file. The directory
		 * is compatible with 'tar', so there's no point having a different
		 * format code for it.
		 */
		AH->format = archTar;
		FUNC3(AH);
		AH->format = archDirectory;
		FUNC4(AH);
		if (FUNC5(tocFH) != 0)
			FUNC7("could not close TOC file: %m");
		FUNC2(AH, ctx->pstate);

		FUNC0(AH, ctx->pstate);

		/*
		 * In directory mode, there is no need to sync all the entries
		 * individually. Just recurse once through all the files generated.
		 */
		if (AH->dosync)
			FUNC8(ctx->directory);
	}
	AH->FH = NULL;
}