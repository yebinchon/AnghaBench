#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  hasho_nextblkno; int /*<<< orphan*/  hasho_prevblkno; } ;
struct TYPE_9__ {scalar_t__ hashso_bucket_buf; scalar_t__ hashso_split_bucket_buf; int hashso_buc_split; scalar_t__ hashso_buc_populated; } ;
struct TYPE_8__ {int /*<<< orphan*/  xs_snapshot; int /*<<< orphan*/  opaque; int /*<<< orphan*/  indexRelation; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__* HashScanOpaque ;
typedef  TYPE_3__* HashPageOpaque ;
typedef  scalar_t__ Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  HASH_READ ; 
 scalar_t__ InvalidBuffer ; 
 int LH_BUCKET_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(IndexScanDesc scan,
			   Buffer *bufp, Page *pagep, HashPageOpaque *opaquep)
{
	BlockNumber blkno;
	Relation	rel = scan->indexRelation;
	HashScanOpaque so = (HashScanOpaque) scan->opaque;
	bool		haveprevblk;

	blkno = (*opaquep)->hasho_prevblkno;

	/*
	 * Retain the pin on primary bucket page till the end of scan.  Refer the
	 * comments in _hash_first to know the reason of retaining pin.
	 */
	if (*bufp == so->hashso_bucket_buf || *bufp == so->hashso_split_bucket_buf)
	{
		FUNC5(*bufp, BUFFER_LOCK_UNLOCK);
		haveprevblk = false;
	}
	else
	{
		FUNC11(rel, *bufp);
		haveprevblk = true;
	}

	*bufp = InvalidBuffer;
	/* check for interrupts while we're not holding any buffer lock */
	FUNC4();

	if (haveprevblk)
	{
		FUNC0(FUNC1(blkno));
		*bufp = FUNC9(rel, blkno, HASH_READ,
							 LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
		*pagep = FUNC2(*bufp);
		FUNC7(scan->xs_snapshot, rel, *pagep);
		*opaquep = (HashPageOpaque) FUNC6(*pagep);

		/*
		 * We always maintain the pin on bucket page for whole scan operation,
		 * so releasing the additional pin we have acquired here.
		 */
		if (*bufp == so->hashso_bucket_buf || *bufp == so->hashso_split_bucket_buf)
			FUNC8(rel, *bufp);
	}
	else if (so->hashso_buc_populated && so->hashso_buc_split)
	{
		/*
		 * end of bucket, scan bucket being populated if there was a split in
		 * progress at the start of scan.
		 */
		*bufp = so->hashso_bucket_buf;

		/*
		 * buffer for bucket being populated must be valid as we acquire the
		 * pin on it before the start of scan and retain it till end of scan.
		 */
		FUNC0(FUNC3(*bufp));

		FUNC5(*bufp, BUFFER_LOCK_SHARE);
		*pagep = FUNC2(*bufp);
		*opaquep = (HashPageOpaque) FUNC6(*pagep);

		/* move to the end of bucket chain */
		while (FUNC1((*opaquep)->hasho_nextblkno))
			FUNC10(scan, bufp, pagep, opaquep);

		/*
		 * setting hashso_buc_split to false indicates that we are scanning
		 * bucket being populated.
		 */
		so->hashso_buc_split = false;
	}
}