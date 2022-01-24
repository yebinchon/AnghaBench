#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_9__ {scalar_t__ hasSeek; int /*<<< orphan*/  dataStart; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_10__ {scalar_t__ mode; int /*<<< orphan*/ * FH; scalar_t__ fSpec; scalar_t__ dosync; scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ archModeWrite ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(ArchiveHandle *AH)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	pgoff_t		tpos;

	if (AH->mode == archModeWrite)
	{
		FUNC1(AH);
		/* Remember TOC's seek position for use below */
		tpos = FUNC8(AH->FH);
		if (tpos < 0 && ctx->hasSeek)
			FUNC4("could not determine seek position in archive file: %m");
		FUNC2(AH);
		ctx->dataStart = FUNC3(AH, ctx);
		FUNC0(AH, NULL);

		/*
		 * If possible, re-write the TOC in order to update the data offset
		 * information.  This is not essential, as pg_restore can cope in most
		 * cases without it; but it can make pg_restore significantly faster
		 * in some situations (especially parallel restore).
		 */
		if (ctx->hasSeek &&
			FUNC6(AH->FH, tpos, SEEK_SET) == 0)
			FUNC2(AH);
	}

	if (FUNC5(AH->FH) != 0)
		FUNC4("could not close archive file: %m");

	/* Sync the output file if one is defined */
	if (AH->dosync && AH->mode == archModeWrite && AH->fSpec)
		(void) FUNC7(AH->fSpec, false);

	AH->FH = NULL;
}