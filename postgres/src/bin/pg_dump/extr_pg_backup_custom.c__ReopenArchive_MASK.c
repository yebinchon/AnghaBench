#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pgoff_t ;
struct TYPE_4__ {int /*<<< orphan*/  hasSeek; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ mode; int /*<<< orphan*/  FH; int /*<<< orphan*/ * fSpec; scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  PG_BINARY_R ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ archModeWrite ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC6(ArchiveHandle *AH)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	pgoff_t		tpos;

	if (AH->mode == archModeWrite)
		FUNC0("can only reopen input archives");

	/*
	 * These two cases are user-facing errors since they represent unsupported
	 * (but not invalid) use-cases.  Word the error messages appropriately.
	 */
	if (AH->fSpec == NULL || FUNC5(AH->fSpec, "") == 0)
		FUNC0("parallel restore from standard input is not supported");
	if (!ctx->hasSeek)
		FUNC0("parallel restore from non-seekable file is not supported");

	tpos = FUNC4(AH->FH);
	if (tpos < 0)
		FUNC0("could not determine seek position in archive file: %m");

#ifndef WIN32
	if (FUNC1(AH->FH) != 0)
		FUNC0("could not close archive file: %m");
#endif

	AH->FH = FUNC2(AH->fSpec, PG_BINARY_R);
	if (!AH->FH)
		FUNC0("could not open input file \"%s\": %m", AH->fSpec);

	if (FUNC3(AH->FH, tpos, SEEK_SET) != 0)
		FUNC0("could not set seek position in archive file: %m");
}