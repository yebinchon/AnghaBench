#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ dataState; int /*<<< orphan*/  dataPos; } ;
typedef  TYPE_3__ lclTocEntry ;
struct TYPE_17__ {int /*<<< orphan*/  hasSeek; } ;
typedef  TYPE_4__ lclContext ;
struct TYPE_18__ {int dumpId; scalar_t__ formatData; } ;
typedef  TYPE_5__ TocEntry ;
struct TYPE_15__ {TYPE_1__* ropt; } ;
struct TYPE_19__ {TYPE_2__ public; int /*<<< orphan*/  FH; scalar_t__ formatData; } ;
struct TYPE_14__ {int /*<<< orphan*/  dropSchema; } ;
typedef  TYPE_6__ ArchiveHandle ;

/* Variables and functions */
#define  BLK_BLOBS 129 
#define  BLK_DATA 128 
 int EOF ; 
 scalar_t__ K_OFFSET_NO_DATA ; 
 scalar_t__ K_OFFSET_POS_NOT_SET ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(ArchiveHandle *AH, TocEntry *te)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	lclTocEntry *tctx = (lclTocEntry *) te->formatData;
	int			blkType;
	int			id;

	if (tctx->dataState == K_OFFSET_NO_DATA)
		return;

	if (!ctx->hasSeek || tctx->dataState == K_OFFSET_POS_NOT_SET)
	{
		/*
		 * We cannot seek directly to the desired block.  Instead, skip over
		 * block headers until we find the one we want.  This could fail if we
		 * are asked to restore items out-of-order.
		 */
		FUNC2(AH, &blkType, &id);

		while (blkType != EOF && id != te->dumpId)
		{
			switch (blkType)
			{
				case BLK_DATA:
					FUNC4(AH);
					break;

				case BLK_BLOBS:
					FUNC3(AH);
					break;

				default:		/* Always have a default */
					FUNC5("unrecognized data block type (%d) while searching archive",
						  blkType);
					break;
			}
			FUNC2(AH, &blkType, &id);
		}
	}
	else
	{
		/* We can just seek to the place we need to be. */
		if (FUNC6(AH->FH, tctx->dataPos, SEEK_SET) != 0)
			FUNC5("error during file seek: %m");

		FUNC2(AH, &blkType, &id);
	}

	/* Produce suitable failure message if we fell off end of file */
	if (blkType == EOF)
	{
		if (tctx->dataState == K_OFFSET_POS_NOT_SET)
			FUNC5("could not find block ID %d in archive -- "
				  "possibly due to out-of-order restore request, "
				  "which cannot be handled due to lack of data offsets in archive",
				  te->dumpId);
		else if (!ctx->hasSeek)
			FUNC5("could not find block ID %d in archive -- "
				  "possibly due to out-of-order restore request, "
				  "which cannot be handled due to non-seekable input file",
				  te->dumpId);
		else					/* huh, the dataPos led us to EOF? */
			FUNC5("could not find block ID %d in archive -- "
				  "possibly corrupt archive",
				  te->dumpId);
	}

	/* Are we sane? */
	if (id != te->dumpId)
		FUNC5("found unexpected block ID (%d) when reading data -- expected %d",
			  id, te->dumpId);

	switch (blkType)
	{
		case BLK_DATA:
			FUNC1(AH);
			break;

		case BLK_BLOBS:
			FUNC0(AH, AH->public.ropt->dropSchema);
			break;

		default:				/* Always have a default */
			FUNC5("unrecognized data block type %d while restoring archive",
				  blkType);
			break;
	}
}