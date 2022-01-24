#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_28__ {scalar_t__ hasho_bucket; int /*<<< orphan*/  hasho_nextblkno; } ;
struct TYPE_22__ {size_t itemIndex; TYPE_5__* items; void* buf; } ;
struct TYPE_27__ {int hashso_buc_populated; TYPE_1__ currPos; int /*<<< orphan*/  hashso_buc_split; void* hashso_split_bucket_buf; void* hashso_bucket_buf; int /*<<< orphan*/  hashso_sk_hash; } ;
struct TYPE_26__ {int /*<<< orphan*/  heapTid; } ;
struct TYPE_25__ {int numberOfKeys; int /*<<< orphan*/  xs_heaptid; int /*<<< orphan*/  xs_snapshot; TYPE_2__* keyData; int /*<<< orphan*/  opaque; TYPE_3__* indexRelation; } ;
struct TYPE_24__ {scalar_t__* rd_opcintype; } ;
struct TYPE_23__ {int sk_attno; scalar_t__ sk_strategy; int sk_flags; scalar_t__ sk_subtype; int /*<<< orphan*/  sk_argument; } ;
typedef  TYPE_2__* ScanKey ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_4__* IndexScanDesc ;
typedef  TYPE_5__ HashScanPosItem ;
typedef  TYPE_6__* HashScanOpaque ;
typedef  TYPE_7__* HashPageOpaque ;
typedef  void* Buffer ;
typedef  scalar_t__ Bucket ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_READ ; 
 scalar_t__ HTEqualStrategyNumber ; 
 scalar_t__ FUNC5 (TYPE_7__*) ; 
 void* InvalidBuffer ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  LH_BUCKET_PAGE ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SK_ISNULL ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,scalar_t__) ; 
 void* FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,void**,int /*<<< orphan*/ *,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 

bool
FUNC23(IndexScanDesc scan, ScanDirection dir)
{
	Relation	rel = scan->indexRelation;
	HashScanOpaque so = (HashScanOpaque) scan->opaque;
	ScanKey		cur;
	uint32		hashkey;
	Bucket		bucket;
	Buffer		buf;
	Page		page;
	HashPageOpaque opaque;
	HashScanPosItem *currItem;

	FUNC22(rel);

	/*
	 * We do not support hash scans with no index qualification, because we
	 * would have to read the whole index rather than just one bucket. That
	 * creates a whole raft of problems, since we haven't got a practical way
	 * to lock all the buckets against splits or compactions.
	 */
	if (scan->numberOfKeys < 1)
		FUNC19(ERROR,
				(FUNC20(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC21("hash indexes do not support whole-index scans")));

	/* There may be more than one index qual, but we hash only the first */
	cur = &scan->keyData[0];

	/* We support only single-column hash indexes */
	FUNC0(cur->sk_attno == 1);
	/* And there's only one operator strategy, too */
	FUNC0(cur->sk_strategy == HTEqualStrategyNumber);

	/*
	 * If the constant in the index qual is NULL, assume it cannot match any
	 * items in the index.
	 */
	if (cur->sk_flags & SK_ISNULL)
		return false;

	/*
	 * Okay to compute the hash key.  We want to do this before acquiring any
	 * locks, in case a user-defined hash function happens to be slow.
	 *
	 * If scankey operator is not a cross-type comparison, we can use the
	 * cached hash function; otherwise gotta look it up in the catalogs.
	 *
	 * We support the convention that sk_subtype == InvalidOid means the
	 * opclass input type; this is a hack to simplify life for ScanKeyInit().
	 */
	if (cur->sk_subtype == rel->rd_opcintype[0] ||
		cur->sk_subtype == InvalidOid)
		hashkey = FUNC11(rel, cur->sk_argument);
	else
		hashkey = FUNC12(rel, cur->sk_argument,
										   cur->sk_subtype);

	so->hashso_sk_hash = hashkey;

	buf = FUNC15(rel, hashkey, HASH_READ, NULL);
	FUNC8(rel, FUNC2(buf), scan->xs_snapshot);
	page = FUNC3(buf);
	FUNC10(scan->xs_snapshot, rel, page);
	opaque = (HashPageOpaque) FUNC7(page);
	bucket = opaque->hasho_bucket;

	so->hashso_bucket_buf = buf;

	/*
	 * If a bucket split is in progress, then while scanning the bucket being
	 * populated, we need to skip tuples that were copied from bucket being
	 * split.  We also need to maintain a pin on the bucket being split to
	 * ensure that split-cleanup work done by vacuum doesn't remove tuples
	 * from it till this scan is done.  We need to maintain a pin on the
	 * bucket being populated to ensure that vacuum doesn't squeeze that
	 * bucket till this scan is complete; otherwise, the ordering of tuples
	 * can't be maintained during forward and backward scans.  Here, we have
	 * to be cautious about locking order: first, acquire the lock on bucket
	 * being split; then, release the lock on it but not the pin; then,
	 * acquire a lock on bucket being populated and again re-verify whether
	 * the bucket split is still in progress.  Acquiring the lock on bucket
	 * being split first ensures that the vacuum waits for this scan to
	 * finish.
	 */
	if (FUNC5(opaque))
	{
		BlockNumber old_blkno;
		Buffer		old_buf;

		old_blkno = FUNC14(rel, bucket);

		/*
		 * release the lock on new bucket and re-acquire it after acquiring
		 * the lock on old bucket.
		 */
		FUNC6(buf, BUFFER_LOCK_UNLOCK);

		old_buf = FUNC16(rel, old_blkno, HASH_READ, LH_BUCKET_PAGE);
		FUNC10(scan->xs_snapshot, rel, FUNC3(old_buf));

		/*
		 * remember the split bucket buffer so as to use it later for
		 * scanning.
		 */
		so->hashso_split_bucket_buf = old_buf;
		FUNC6(old_buf, BUFFER_LOCK_UNLOCK);

		FUNC6(buf, BUFFER_LOCK_SHARE);
		page = FUNC3(buf);
		opaque = (HashPageOpaque) FUNC7(page);
		FUNC0(opaque->hasho_bucket == bucket);

		if (FUNC5(opaque))
			so->hashso_buc_populated = true;
		else
		{
			FUNC13(rel, so->hashso_split_bucket_buf);
			so->hashso_split_bucket_buf = InvalidBuffer;
		}
	}

	/* If a backwards scan is requested, move to the end of the chain */
	if (FUNC9(dir))
	{
		/*
		 * Backward scans that start during split needs to start from end of
		 * bucket being split.
		 */
		while (FUNC1(opaque->hasho_nextblkno) ||
			   (so->hashso_buc_populated && !so->hashso_buc_split))
			FUNC17(scan, &buf, &page, &opaque);
	}

	/* remember which buffer we have pinned, if any */
	FUNC0(FUNC4(so->currPos.buf));
	so->currPos.buf = buf;

	/* Now find all the tuples satisfying the qualification from a page */
	if (!FUNC18(scan, &buf, dir))
		return false;

	/* OK, itemIndex says what to return */
	currItem = &so->currPos.items[so->currPos.itemIndex];
	scan->xs_heaptid = currItem->heapTid;

	/* if we're here, _hash_readpage found a valid tuples */
	return true;
}