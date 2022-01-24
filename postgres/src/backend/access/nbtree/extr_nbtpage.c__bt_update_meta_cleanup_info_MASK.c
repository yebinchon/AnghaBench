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
struct TYPE_4__ {scalar_t__ version; scalar_t__ last_cleanup_num_heap_tuples; scalar_t__ oldest_btpo_xact; int /*<<< orphan*/  fastlevel; int /*<<< orphan*/  fastroot; int /*<<< orphan*/  level; int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ xl_btree_metadata ;
typedef  scalar_t__ float8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  scalar_t__ TransactionId ;
struct TYPE_5__ {scalar_t__ btm_version; scalar_t__ btm_oldest_btpo_xact; scalar_t__ btm_last_cleanup_num_heap_tuples; int /*<<< orphan*/  btm_fastlevel; int /*<<< orphan*/  btm_fastroot; int /*<<< orphan*/  btm_level; int /*<<< orphan*/  btm_root; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_2__ BTMetaPageData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTREE_METAPAGE ; 
 scalar_t__ BTREE_NOVAC_VERSION ; 
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/  BT_WRITE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_BTREE_ID ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  XLOG_BTREE_META_CLEANUP ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(Relation rel, TransactionId oldestBtpoXact,
							 float8 numHeapTuples)
{
	Buffer		metabuf;
	Page		metapg;
	BTMetaPageData *metad;
	bool		needsRewrite = false;
	XLogRecPtr	recptr;

	/* read the metapage and check if it needs rewrite */
	metabuf = FUNC13(rel, BTREE_METAPAGE, BT_READ);
	metapg = FUNC2(metabuf);
	metad = FUNC1(metapg);

	/* outdated version of metapage always needs rewrite */
	if (metad->btm_version < BTREE_NOVAC_VERSION)
		needsRewrite = true;
	else if (metad->btm_oldest_btpo_xact != oldestBtpoXact ||
			 metad->btm_last_cleanup_num_heap_tuples != numHeapTuples)
		needsRewrite = true;

	if (!needsRewrite)
	{
		FUNC14(rel, metabuf);
		return;
	}

	/* trade in our read lock for a write lock */
	FUNC4(metabuf, BUFFER_LOCK_UNLOCK);
	FUNC4(metabuf, BT_WRITE);

	FUNC8();

	/* upgrade meta-page if needed */
	if (metad->btm_version < BTREE_NOVAC_VERSION)
		FUNC15(metapg);

	/* update cleanup-related information */
	metad->btm_oldest_btpo_xact = oldestBtpoXact;
	metad->btm_last_cleanup_num_heap_tuples = numHeapTuples;
	FUNC5(metabuf);

	/* write wal record if needed */
	if (FUNC7(rel))
	{
		xl_btree_metadata md;

		FUNC9();
		FUNC12(0, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);

		FUNC0(metad->btm_version >= BTREE_NOVAC_VERSION);
		md.version = metad->btm_version;
		md.root = metad->btm_root;
		md.level = metad->btm_level;
		md.fastroot = metad->btm_fastroot;
		md.fastlevel = metad->btm_fastlevel;
		md.oldest_btpo_xact = oldestBtpoXact;
		md.last_cleanup_num_heap_tuples = numHeapTuples;

		FUNC11(0, (char *) &md, sizeof(xl_btree_metadata));

		recptr = FUNC10(RM_BTREE_ID, XLOG_BTREE_META_CLEANUP);

		FUNC6(metapg, recptr);
	}

	FUNC3();
	FUNC14(rel, metabuf);
}