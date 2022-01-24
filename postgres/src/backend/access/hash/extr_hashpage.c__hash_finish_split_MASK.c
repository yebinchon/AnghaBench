#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  hash_ctl ;
struct TYPE_8__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
struct TYPE_7__ {scalar_t__ hasho_nextblkno; int /*<<< orphan*/  hasho_bucket; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  TYPE_1__* IndexTuple ;
typedef  TYPE_2__* HashPageOpaque ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_3__ HASHCTL ;
typedef  scalar_t__ Buffer ;
typedef  int /*<<< orphan*/  Bucket ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 scalar_t__ FirstOffsetNumber ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_READ ; 
 scalar_t__ InvalidBuffer ; 
 int LH_BUCKET_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (char*,int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void
FUNC19(Relation rel, Buffer metabuf, Buffer obuf, Bucket obucket,
				   uint32 maxbucket, uint32 highmask, uint32 lowmask)
{
	HASHCTL		hash_ctl;
	HTAB	   *tidhtab;
	Buffer		bucket_nbuf = InvalidBuffer;
	Buffer		nbuf;
	Page		npage;
	BlockNumber nblkno;
	BlockNumber bucket_nblkno;
	HashPageOpaque npageopaque;
	Bucket		nbucket;
	bool		found;

	/* Initialize hash tables used to track TIDs */
	FUNC18(&hash_ctl, 0, sizeof(hash_ctl));
	hash_ctl.keysize = sizeof(ItemPointerData);
	hash_ctl.entrysize = sizeof(ItemPointerData);
	hash_ctl.hcxt = CurrentMemoryContext;

	tidhtab =
		FUNC15("bucket ctids",
					256,		/* arbitrary initial size */
					&hash_ctl,
					HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	bucket_nblkno = nblkno = FUNC11(rel, obucket);

	/*
	 * Scan the new bucket and build hash table of TIDs
	 */
	for (;;)
	{
		OffsetNumber noffnum;
		OffsetNumber nmaxoffnum;

		nbuf = FUNC12(rel, nblkno, HASH_READ,
							LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);

		/* remember the primary bucket buffer to acquire cleanup lock on it. */
		if (nblkno == bucket_nblkno)
			bucket_nbuf = nbuf;

		npage = FUNC2(nbuf);
		npageopaque = (HashPageOpaque) FUNC9(npage);

		/* Scan each tuple in new page */
		nmaxoffnum = FUNC8(npage);
		for (noffnum = FirstOffsetNumber;
			 noffnum <= nmaxoffnum;
			 noffnum = FUNC5(noffnum))
		{
			IndexTuple	itup;

			/* Fetch the item's TID and insert it in hash table. */
			itup = (IndexTuple) FUNC6(npage,
											FUNC7(npage, noffnum));

			(void) FUNC17(tidhtab, &itup->t_tid, HASH_ENTER, &found);

			FUNC0(!found);
		}

		nblkno = npageopaque->hasho_nextblkno;

		/*
		 * release our write lock without modifying buffer and ensure to
		 * retain the pin on primary bucket.
		 */
		if (nbuf == bucket_nbuf)
			FUNC4(nbuf, BUFFER_LOCK_UNLOCK);
		else
			FUNC13(rel, nbuf);

		/* Exit loop if no more overflow pages in new bucket */
		if (!FUNC1(nblkno))
			break;
	}

	/*
	 * Conditionally get the cleanup lock on old and new buckets to perform
	 * the split operation.  If we don't get the cleanup locks, silently give
	 * up and next insertion on old bucket will try again to complete the
	 * split.
	 */
	if (!FUNC3(obuf))
	{
		FUNC16(tidhtab);
		return;
	}
	if (!FUNC3(bucket_nbuf))
	{
		FUNC4(obuf, BUFFER_LOCK_UNLOCK);
		FUNC16(tidhtab);
		return;
	}

	npage = FUNC2(bucket_nbuf);
	npageopaque = (HashPageOpaque) FUNC9(npage);
	nbucket = npageopaque->hasho_bucket;

	FUNC14(rel, metabuf, obucket,
					  nbucket, obuf, bucket_nbuf, tidhtab,
					  maxbucket, highmask, lowmask);

	FUNC10(rel, bucket_nbuf);
	FUNC16(tidhtab);
}