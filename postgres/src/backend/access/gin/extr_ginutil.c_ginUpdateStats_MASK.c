#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  prevTail; int /*<<< orphan*/  newRightlink; scalar_t__ ntuples; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ ginxlogUpdateMeta ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_16__ {int /*<<< orphan*/  nEntries; int /*<<< orphan*/  nDataPages; int /*<<< orphan*/  nEntryPages; int /*<<< orphan*/  nTotalPages; } ;
struct TYPE_15__ {int /*<<< orphan*/  nEntries; int /*<<< orphan*/  nDataPages; int /*<<< orphan*/  nEntryPages; int /*<<< orphan*/  nTotalPages; } ;
struct TYPE_14__ {int pd_lower; } ;
struct TYPE_13__ {int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  TYPE_4__ GinStatsData ;
typedef  TYPE_5__ GinMetaPageData ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 int /*<<< orphan*/  GIN_METAPAGE_BLKNO ; 
 TYPE_5__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_GIN_ID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_GIN_UPDATE_META_PAGE ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 

void
FUNC15(Relation index, const GinStatsData *stats, bool is_build)
{
	Buffer		metabuffer;
	Page		metapage;
	GinMetaPageData *metadata;

	metabuffer = FUNC6(index, GIN_METAPAGE_BLKNO);
	FUNC3(metabuffer, GIN_EXCLUSIVE);
	metapage = FUNC0(metabuffer);
	metadata = FUNC2(metapage);

	FUNC8();

	metadata->nTotalPages = stats->nTotalPages;
	metadata->nEntryPages = stats->nEntryPages;
	metadata->nDataPages = stats->nDataPages;
	metadata->nEntries = stats->nEntries;

	/*
	 * Set pd_lower just past the end of the metadata.  This is essential,
	 * because without doing so, metadata will be lost if xlog.c compresses
	 * the page.  (We must do this here because pre-v11 versions of PG did not
	 * set the metapage's pd_lower correctly, so a pg_upgraded index might
	 * contain the wrong value.)
	 */
	((PageHeader) metapage)->pd_lower =
		((char *) metadata + sizeof(GinMetaPageData)) - (char *) metapage;

	FUNC4(metabuffer);

	if (FUNC7(index) && !is_build)
	{
		XLogRecPtr	recptr;
		ginxlogUpdateMeta data;

		data.node = index->rd_node;
		data.ntuples = 0;
		data.newRightlink = data.prevTail = InvalidBlockNumber;
		FUNC14(&data.metadata, metadata, sizeof(GinMetaPageData));

		FUNC10();
		FUNC13((char *) &data, sizeof(ginxlogUpdateMeta));
		FUNC12(0, metabuffer, REGBUF_WILL_INIT | REGBUF_STANDARD);

		recptr = FUNC11(RM_GIN_ID, XLOG_GIN_UPDATE_META_PAGE);
		FUNC5(metapage, recptr);
	}

	FUNC9(metabuffer);

	FUNC1();
}