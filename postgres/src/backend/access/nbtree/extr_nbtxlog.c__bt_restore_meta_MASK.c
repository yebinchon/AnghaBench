#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ version; int /*<<< orphan*/  last_cleanup_num_heap_tuples; int /*<<< orphan*/  oldest_btpo_xact; int /*<<< orphan*/  fastlevel; int /*<<< orphan*/  fastroot; int /*<<< orphan*/  level; int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ xl_btree_metadata ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_11__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_14__ {scalar_t__ btm_version; int /*<<< orphan*/  btm_last_cleanup_num_heap_tuples; int /*<<< orphan*/  btm_oldest_btpo_xact; int /*<<< orphan*/  btm_fastlevel; int /*<<< orphan*/  btm_fastroot; int /*<<< orphan*/  btm_level; int /*<<< orphan*/  btm_root; int /*<<< orphan*/  btm_magic; } ;
struct TYPE_13__ {int /*<<< orphan*/  btpo_flags; } ;
struct TYPE_12__ {int pd_lower; } ;
typedef  int Size ;
typedef  TYPE_3__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_4__* BTPageOpaque ;
typedef  TYPE_5__ BTMetaPageData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTP_META ; 
 TYPE_5__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  BTREE_MAGIC ; 
 scalar_t__ BTREE_METAPAGE ; 
 scalar_t__ BTREE_NOVAC_VERSION ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(XLogReaderState *record, uint8 block_id)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	Buffer		metabuf;
	Page		metapg;
	BTMetaPageData *md;
	BTPageOpaque pageop;
	xl_btree_metadata *xlrec;
	char	   *ptr;
	Size		len;

	metabuf = FUNC9(record, block_id);
	ptr = FUNC10(record, block_id, &len);

	FUNC0(len == sizeof(xl_btree_metadata));
	FUNC0(FUNC2(metabuf) == BTREE_METAPAGE);
	xlrec = (xl_btree_metadata *) ptr;
	metapg = FUNC3(metabuf);

	FUNC11(metapg, FUNC4(metabuf));

	md = FUNC1(metapg);
	md->btm_magic = BTREE_MAGIC;
	md->btm_version = xlrec->version;
	md->btm_root = xlrec->root;
	md->btm_level = xlrec->level;
	md->btm_fastroot = xlrec->fastroot;
	md->btm_fastlevel = xlrec->fastlevel;
	/* Cannot log BTREE_MIN_VERSION index metapage without upgrade */
	FUNC0(md->btm_version >= BTREE_NOVAC_VERSION);
	md->btm_oldest_btpo_xact = xlrec->oldest_btpo_xact;
	md->btm_last_cleanup_num_heap_tuples = xlrec->last_cleanup_num_heap_tuples;

	pageop = (BTPageOpaque) FUNC6(metapg);
	pageop->btpo_flags = BTP_META;

	/*
	 * Set pd_lower just past the end of the metadata.  This is essential,
	 * because without doing so, metadata will be lost if xlog.c compresses
	 * the page.
	 */
	((PageHeader) metapg)->pd_lower =
		((char *) md + sizeof(BTMetaPageData)) - (char *) metapg;

	FUNC7(metapg, lsn);
	FUNC5(metabuf);
	FUNC8(metabuf);
}