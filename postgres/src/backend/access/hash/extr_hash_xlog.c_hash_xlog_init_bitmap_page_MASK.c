#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  bmsize; } ;
typedef  TYPE_1__ xl_hash_init_bitmap_page ;
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_11__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_12__ {size_t hashm_nmaps; scalar_t__* hashm_mapp; scalar_t__ hashm_maxbucket; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_3__* HashMetaPage ;
typedef  scalar_t__ ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INIT_FORKNUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	Buffer		bitmapbuf;
	Buffer		metabuf;
	Page		page;
	HashMetaPage metap;
	uint32		num_buckets;
	ForkNumber	forknum;

	xl_hash_init_bitmap_page *xlrec = (xl_hash_init_bitmap_page *) FUNC10(record);

	/*
	 * Initialize bitmap page
	 */
	bitmapbuf = FUNC7(record, 0);
	FUNC11(bitmapbuf, xlrec->bmsize, true);
	FUNC5(FUNC0(bitmapbuf), lsn);
	FUNC4(bitmapbuf);

	/*
	 * Force the on-disk state of init forks to always be in sync with the
	 * state in shared buffers.  See XLogReadBufferForRedoExtended.  We need
	 * special handling for init forks as create index operations don't log a
	 * full page image of the metapage.
	 */
	FUNC9(record, 0, NULL, &forknum, NULL);
	if (forknum == INIT_FORKNUM)
		FUNC2(bitmapbuf);
	FUNC6(bitmapbuf);

	/* add the new bitmap page to the metapage's list of bitmaps */
	if (FUNC8(record, 1, &metabuf) == BLK_NEEDS_REDO)
	{
		/*
		 * Note: in normal operation, we'd update the metapage while still
		 * holding lock on the bitmap page.  But during replay it's not
		 * necessary to hold that lock, since nobody can see it yet; the
		 * creating transaction hasn't yet committed.
		 */
		page = FUNC0(metabuf);
		metap = FUNC3(page);

		num_buckets = metap->hashm_maxbucket + 1;
		metap->hashm_mapp[metap->hashm_nmaps] = num_buckets + 1;
		metap->hashm_nmaps++;

		FUNC5(page, lsn);
		FUNC4(metabuf);

		FUNC9(record, 1, NULL, &forknum, NULL);
		if (forknum == INIT_FORKNUM)
			FUNC2(metabuf);
	}
	if (FUNC1(metabuf))
		FUNC6(metabuf);
}