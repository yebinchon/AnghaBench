#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_7__ {scalar_t__ hashm_maxbucket; int /*<<< orphan*/  hashm_lowmask; int /*<<< orphan*/  hashm_highmask; } ;
struct TYPE_6__ {scalar_t__ hasho_bucket; scalar_t__ hasho_prevblkno; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* HashPageOpaque ;
typedef  TYPE_2__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ Bucket ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int HASH_READ ; 
 int HASH_WRITE ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  LH_BUCKET_PAGE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Buffer
FUNC10(Relation rel, uint32 hashkey, int access,
								HashMetaPage *cachedmetap)
{
	HashMetaPage metap;
	Buffer		buf;
	Buffer		metabuf = InvalidBuffer;
	Page		page;
	Bucket		bucket;
	BlockNumber blkno;
	HashPageOpaque opaque;

	/* We read from target bucket buffer, hence locking is must. */
	FUNC0(access == HASH_READ || access == HASH_WRITE);

	metap = FUNC7(rel, &metabuf, false);
	FUNC0(metap != NULL);

	/*
	 * Loop until we get a lock on the correct target bucket.
	 */
	for (;;)
	{
		/*
		 * Compute the target bucket number, and convert to block number.
		 */
		bucket = FUNC8(hashkey,
									  metap->hashm_maxbucket,
									  metap->hashm_highmask,
									  metap->hashm_lowmask);

		blkno = FUNC1(metap, bucket);

		/* Fetch the primary bucket page for the bucket */
		buf = FUNC6(rel, blkno, access, LH_BUCKET_PAGE);
		page = FUNC2(buf);
		opaque = (HashPageOpaque) FUNC4(page);
		FUNC0(opaque->hasho_bucket == bucket);
		FUNC0(opaque->hasho_prevblkno != InvalidBlockNumber);

		/*
		 * If this bucket hasn't been split, we're done.
		 */
		if (opaque->hasho_prevblkno <= metap->hashm_maxbucket)
			break;

		/* Drop lock on this buffer, update cached metapage, and retry. */
		FUNC9(rel, buf);
		metap = FUNC7(rel, &metabuf, true);
		FUNC0(metap != NULL);
	}

	if (FUNC3(metabuf))
		FUNC5(rel, metabuf);

	if (cachedmetap)
		*cachedmetap = metap;

	return buf;
}