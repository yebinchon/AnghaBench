#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int Bucket ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_METAPAGE ; 
 int /*<<< orphan*/  HASH_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LH_META_PAGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 

BlockNumber
FUNC6(Relation rel, Bucket new_bucket)
{
	Bucket		old_bucket;
	uint32		mask;
	Buffer		metabuf;
	HashMetaPage metap;
	BlockNumber blkno;

	/*
	 * To get the old bucket from the current bucket, we need a mask to modulo
	 * into lower half of table.  This mask is stored in meta page as
	 * hashm_lowmask, but here we can't rely on the same, because we need a
	 * value of lowmask that was prevalent at the time when bucket split was
	 * started.  Masking the most significant bit of new bucket would give us
	 * old bucket.
	 */
	mask = (((uint32) 1) << (FUNC5(new_bucket) - 1)) - 1;
	old_bucket = new_bucket & mask;

	metabuf = FUNC3(rel, HASH_METAPAGE, HASH_READ, LH_META_PAGE);
	metap = FUNC2(FUNC1(metabuf));

	blkno = FUNC0(metap, old_bucket);

	FUNC4(rel, metabuf);

	return blkno;
}